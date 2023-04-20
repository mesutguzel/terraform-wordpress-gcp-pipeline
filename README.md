## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.31.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.nat_address](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_address) | resource |
| [google_compute_firewall.allow-iap](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.wp_backend_forwarding](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_firewall) | resource |
| [google_compute_firewall.wp_fw_2](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_firewall) | resource |
| [google_compute_forwarding_rule.default](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_forwarding_rule) | resource |
| [google_compute_instance_group_manager.wp_instance_group](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_instance_group_manager) | resource |
| [google_compute_instance_template.instance_template](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_instance_template) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_network) | resource |
| [google_compute_project_default_network_tier.default](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_project_default_network_tier) | resource |
| [google_compute_region_backend_service.default](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_region_backend_service) | resource |
| [google_compute_region_health_check.hc](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_region_health_check) | resource |
| [google_compute_region_target_http_proxy.default](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_region_target_http_proxy) | resource |
| [google_compute_region_url_map.default](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_region_url_map) | resource |
| [google_compute_router.router](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.private_instance](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.proxy](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.public](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/compute_subnetwork) | resource |
| [google_project_iam_member.db_secret_binding](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/project_iam_member) | resource |
| [google_project_service.secret](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/project_service) | resource |
| [google_project_service.sqladmin](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/project_service) | resource |
| [google_secret_manager_secret.secret-basic](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/secret_manager_secret) | resource |
| [google_secret_manager_secret_version.secret-version-basic](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/secret_manager_secret_version) | resource |
| [google_service_account.vm_service_account](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/service_account) | resource |
| [google_sql_database.database](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/sql_database) | resource |
| [google_sql_database_instance.main](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/sql_database_instance) | resource |
| [google_sql_user.users](https://registry.terraform.io/providers/hashicorp/google/4.31.0/docs/resources/sql_user) | resource |
| [random_password.password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [template_file.startup_script](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_name"></a> [base\_name](#input\_base\_name) | n/a | `string` | `"wp-instance"` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | n/a | `string` | `"wp-database"` | no |
| <a name="input_db_user"></a> [db\_user](#input\_db\_user) | n/a | `string` | `"wp"` | no |
| <a name="input_db_version"></a> [db\_version](#input\_db\_version) | n/a | `string` | `"MYSQL_8_0"` | no |
| <a name="input_forwardin_rule"></a> [forwardin\_rule](#input\_forwardin\_rule) | n/a | `string` | `"wp-forwarding-rule"` | no |
| <a name="input_group_manager"></a> [group\_manager](#input\_group\_manager) | n/a | `string` | `"wp-instance-group"` | no |
| <a name="input_hc_name"></a> [hc\_name](#input\_hc\_name) | n/a | `string` | `"check-wp-backend"` | no |
| <a name="input_http_proxy"></a> [http\_proxy](#input\_http\_proxy) | n/a | `string` | `"wp-proxy"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | n/a | `string` | `"main-instance"` | no |
| <a name="input_instance_template"></a> [instance\_template](#input\_instance\_template) | n/a | `string` | `"wp-instance-template"` | no |
| <a name="input_instance_version"></a> [instance\_version](#input\_instance\_version) | n/a | `string` | `"wp-managed-instance"` | no |
| <a name="input_ip_cidr_range"></a> [ip\_cidr\_range](#input\_ip\_cidr\_range) | n/a | `list` | <pre>[<br>  "10.0.0.0/24",<br>  "10.0.1.0/24",<br>  "10.129.0.0/26"<br>]</pre> | no |
| <a name="input_lb_backend"></a> [lb\_backend](#input\_lb\_backend) | n/a | `string` | `"wp-backend"` | no |
| <a name="input_load_balancing_scheme"></a> [load\_balancing\_scheme](#input\_load\_balancing\_scheme) | n/a | `string` | `"EXTERNAL_MANAGED"` | no |
| <a name="input_machine_type"></a> [machine\_type](#input\_machine\_type) | n/a | `string` | `"f1-micro"` | no |
| <a name="input_nat"></a> [nat](#input\_nat) | n/a | `string` | `"my-router-nat"` | no |
| <a name="input_nat_address"></a> [nat\_address](#input\_nat\_address) | n/a | `string` | `"nat-manual-ip"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-central1"` | no |
| <a name="input_router"></a> [router](#input\_router) | n/a | `string` | `"terraform-router"` | no |
| <a name="input_source_image"></a> [source\_image](#input\_source\_image) | n/a | `string` | `"debian-cloud/debian-11"` | no |
| <a name="input_source_ranges"></a> [source\_ranges](#input\_source\_ranges) | n/a | `list` | <pre>[<br>  "130.211.0.0/22",<br>  "35.191.0.0/16",<br>  "10.129.0.0/26"<br>]</pre> | no |
| <a name="input_standard_tier"></a> [standard\_tier](#input\_standard\_tier) | n/a | `string` | `"STANDARD"` | no |
| <a name="input_subnet_proxy"></a> [subnet\_proxy](#input\_subnet\_proxy) | n/a | `string` | `"wp-net-proxy"` | no |
| <a name="input_subnetwork_private"></a> [subnetwork\_private](#input\_subnetwork\_private) | n/a | `string` | `"private-subnetwork"` | no |
| <a name="input_subnetwork_public"></a> [subnetwork\_public](#input\_subnetwork\_public) | n/a | `string` | `"public-subnetwork"` | no |
| <a name="input_url_map"></a> [url\_map](#input\_url\_map) | n/a | `string` | `"wp-map"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | `"vpc-terraform"` | no |
| <a name="input_wp_backend_forwarding"></a> [wp\_backend\_forwarding](#input\_wp\_backend\_forwarding) | n/a | `list` | <pre>[<br>  "wp-backend-fw",<br>  "wp-backend-fw-2"<br>]</pre> | no |
| <a name="input_zone"></a> [zone](#input\_zone) | n/a | `string` | `"us-central1-a"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
