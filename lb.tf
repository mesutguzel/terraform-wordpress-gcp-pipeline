resource "google_compute_forwarding_rule" "default" {
  depends_on = [google_compute_subnetwork.proxy]
  name       = var.forwardin_rule
  region     = var.region

  ip_protocol           = "TCP"
  load_balancing_scheme = var.load_balancing_scheme
  port_range            = "80"
  target                = google_compute_region_target_http_proxy.default.id
  network               = google_compute_network.vpc_network.id
  network_tier          = var.standard_tier
}

resource "google_compute_subnetwork" "proxy" {
  name          = var.subnet_proxy
  ip_cidr_range = var.ip_cidr_range[2]
  region        = var.region
  network       = google_compute_network.vpc_network.id
  purpose       = "REGIONAL_MANAGED_PROXY"
  role          = "ACTIVE"
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
  
  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}

resource "google_compute_region_target_http_proxy" "default" {

  region  = var.region
  name    = var.http_proxy
  url_map = google_compute_region_url_map.default.id
}
resource "google_compute_region_url_map" "default" {
  region          = var.region
  name            = var.url_map
  default_service = google_compute_region_backend_service.default.id
}


resource "google_compute_region_backend_service" "default" {
  load_balancing_scheme = var.load_balancing_scheme

  backend {
    group           = google_compute_instance_group_manager.wp_instance_group.instance_group
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
  }

  region      = var.region
  name        = var.lb_backend
  protocol    = "HTTP"
  port_name   = var.lb_backend
  timeout_sec = 60

  health_checks = [google_compute_region_health_check.hc.id]
}


resource "google_compute_region_health_check" "hc" {
  name               = var.hc_name
  check_interval_sec = 5
  timeout_sec        = 5
  region             = var.region

  http_health_check {
    port = "80"
  }
}
resource "google_compute_project_default_network_tier" "default" {
  network_tier = var.standard_tier
}

resource "google_compute_firewall" "wp_backend_forwarding" {
  name          = var.wp_backend_forwarding[0]
  network       = google_compute_network.vpc_network.id
  source_ranges = [var.source_ranges[0], var.source_ranges[1]]
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["load-balanced-backend"]
  direction   = "INGRESS"
}


resource "google_compute_firewall" "wp_fw_2" {
  name          = var.wp_backend_forwarding[1]
  network       = google_compute_network.vpc_network.id
  source_ranges = [var.source_ranges[2]]
  target_tags   = ["load-balanced-backend"]
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  direction = "INGRESS"
}