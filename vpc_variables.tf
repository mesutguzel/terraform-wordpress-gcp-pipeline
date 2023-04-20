variable "vpc_name" {
  default = "vpc-terraform"
}
variable "subnetwork_public" {
  default = "public-subnetwork"
}
variable "subnetwork_private" {
  default = "private-subnetwork"
}
variable "ip_cidr_range" {
  default = ["10.0.0.0/24", "10.0.1.0/24", "10.129.0.0/26"]
}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-a"
}
variable "router" {
  default = "terraform-router"
}
variable "nat" {
  default = "my-router-nat"
}
variable "nat_address" {
  default = "nat-manual-ip"
}