variable "machine_type" {
  default = "f1-micro"
}
variable "instance_template" {
  default = "wp-instance-template"
}
variable "source_image" {
  default = "debian-cloud/debian-11"
}
variable "group_manager" {
  default = "wp-instance-group"
}
variable "base_name" {
  default = "wp-instance"
}
variable "instance_version" {
  default = "wp-managed-instance"
}
variable "lb_backend" {
  default = "wp-backend"
}