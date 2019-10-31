output "output1" {
  value = "${join("-",[connect_with_vnc, oci_core_instance_console_connection.instance_id])}" 
}
output "connect_with_ssh" {
  value = "${oci_core_instance_console_connection.test_instance_console_connection.connection_string}"
}

output "connect_with_vnc" {
  value = "${oci_core_instance_console_connection.test_instance_console_connection.vnc_connection_string}"
}