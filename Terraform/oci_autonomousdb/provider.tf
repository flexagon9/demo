variable "compartment_ocid" {default="ocid1.compartment.oc1..aaaaaaaaose23kfto7ito35t7mkowbjxgeqxshssjk4gejgfydqygbgfacja"}
variable "region" {default="us-ashburn-1"}
variable "autonomous_database_cpu_core_count" {default=1}
variable "autonomous_database_data_storage_size_in_tbs" {default=1}
variable "autonomous_database_db_name" {default="flexdb"}

provider "oci" {
  version              = ">= 3.14"
  region               = "${var.region}"
}