variable "forwardin_rule" {
  default = "wp-forwarding-rule"
}
variable "standard_tier" {
  default = "STANDARD"
}
variable "url_map" {
  default = "wp-map"
}
variable "load_balancing_scheme" {
  default = "EXTERNAL_MANAGED"
}
variable "http_proxy" {
  default = "wp-proxy"
}

variable "subnet_proxy" {
  default = "wp-net-proxy"
}
variable "hc_name" {
  default = "check-wp-backend"
}
variable "wp_backend_forwarding" {
  default = ["wp-backend-fw", "wp-backend-fw-2"]
}
variable "source_ranges" {
  default = ["130.211.0.0/22", "35.191.0.0/16", "10.129.0.0/26"]
}