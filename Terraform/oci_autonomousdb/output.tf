output "output1" {
  value = "${var.db_url}" 
}

variable "db_url" {
  value = "${oci_database_autonomous_database.flex_autonomous_database.connection_strings}"
}