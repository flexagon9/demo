terraform {
  backend "consul" {
    path    = "terraform/state/flex/azure/vm/demo1"
	lock = true
  }
}