variable "compartment_ocid" {default="ocid1.compartment.oc1..aaaaaaaaose23kfto7ito35t7mkowbjxgeqxshssjk4gejgfydqygbgfacja"}
variable "region" {default="us-ashburn-1"}

provider "oci" {
  version              = ">= 3.14"
  region               = "${var.region}"
}