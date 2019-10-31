terraform {
  backend "consul" {
    path    = "terraform/state/flex/oci/vm/demo1"
	lock = true
  }
}