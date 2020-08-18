terraform {
  backend "consul" {
    path    = "terraform/state/flex/oci/db/autonomous/demo1"
	lock = true
  }
}