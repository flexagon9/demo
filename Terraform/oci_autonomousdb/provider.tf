variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "compartment_ocid" {default="ocid1.compartment.oc1..aaaaaaaanqjkbw76pcrpg24tcoroxgdi2ivtwcidkce4hjv2eksg2rgpo6da"}
variable "region" {default="us-ashburn-1"}
variable "autonomous_database_cpu_core_count" {default=1}
variable "autonomous_database_data_storage_size_in_tbs" {default=1}
variable "autonomous_database_db_name" {default="flexdb"}

provider "oci" {
  version              = ">= 3.14"
  region               = "${var.region}"
}
