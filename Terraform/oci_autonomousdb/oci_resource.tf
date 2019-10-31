resource "oci_core_virtual_network" "flex-vcn" {
  cidr_block     = "10.0.0.0/16"
  dns_label      = "vcn1"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "flex-vcn"
}

resource "oci_database_autonomous_database" "flex_autonomous_database" {
    #Required
    admin_password = "${data.consul_keys.autonomous_db.var.adminuser}"
    compartment_id = "${var.compartment_ocid}"
    cpu_core_count = "${var.autonomous_database_cpu_core_count}"
    data_storage_size_in_tbs = "${var.autonomous_database_data_storage_size_in_tbs}"
    db_name = "${var.autonomous_database_db_name}"
}

data "consul_keys" "autonomous_db" {

  # Read the launch pwd from Consul
  key {
    name    = "adminuser"
    path    = "cloud/oci/database/autonomous/user/admin"
  }
}