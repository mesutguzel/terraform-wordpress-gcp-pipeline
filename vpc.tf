resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "public" {
  name          = var.subnetwork_public
  ip_cidr_range = var.ip_cidr_range[0]
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_subnetwork" "private_instance" {
  name          = var.subnetwork_private
  ip_cidr_range = var.ip_cidr_range[1]
  region        = var.region
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_router" "router" {
  name    = var.router
  region  = google_compute_subnetwork.public.region
  network = google_compute_network.vpc_network.id

  bgp {
    asn = 64514
  }
}

resource "google_compute_router_nat" "nat" {
  name                               = var.nat
  router                             = google_compute_router.router.name
  region                             = google_compute_router.router.region
  nat_ip_allocate_option             = "MANUAL_ONLY"
  nat_ips                            = [google_compute_address.nat_address.self_link]
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
resource "google_compute_firewall" "allow-iap" {
  name    = "allow-iap-firewall"
  network = google_compute_network.vpc_network.name



  allow {
    protocol = "tcp"
    ports    = ["22", "80"]

  }

  source_ranges = ["35.235.240.0/20"]

}


resource "google_compute_address" "nat_address" {
  name   = var.nat_address
  region = google_compute_subnetwork.public.region
}