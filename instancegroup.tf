resource "google_compute_instance_template" "instance_template" {
  name_prefix             = var.instance_template
  machine_type            = var.machine_type
  region                  = var.region
  /* metadata_startup_script = "${data.template_file.startup_script.rendered}" */
  
  disk {
    source_image = var.source_image
  }

  network_interface {
    subnetwork = google_compute_subnetwork.private_instance.self_link
  }

  lifecycle {
    create_before_destroy = true
  }
  tags = ["load-balanced-backend"]
}

resource "google_compute_instance_group_manager" "wp_instance_group" {
  name               = var.group_manager
  base_instance_name = var.base_name
  zone               = var.zone
  target_size        = "2"
  version {
    name              = var.instance_version
    instance_template = google_compute_instance_template.instance_template.id
  }
  update_policy {
    type                           = "PROACTIVE"
    minimal_action                 = "REPLACE"
    most_disruptive_allowed_action = "REPLACE"
    max_surge_fixed                = 1
    max_unavailable_fixed          = 1
    replacement_method             = "SUBSTITUTE"
  }

  named_port {
    name = var.lb_backend
    port = 80
  }

}

