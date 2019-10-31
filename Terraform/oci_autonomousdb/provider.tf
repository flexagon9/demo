variable "private_key_path" {default="/home/oracle/.ssh/oci_api_key.pem"}
variable "region" {default="us-ashburn-1"}
variable "autonomous_database_cpu_core_count" {default=1}
variable "autonomous_database_data_storage_size_in_tbs" {default=1}
variable "autonomous_database_db_name" {default="flexdb"}

provider "oci" {
  version              = ">= 3.14"
  private_key_path     = "${var.private_key_path}"
  region               = "${var.region}"
}