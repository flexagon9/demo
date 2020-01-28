// Copyright (c) 2017, 2019, Oracle and/or its affiliates. All rights reserved.

variable "instance_image_ocid" {
  type = "map"

  default = {
    # See https://docs.us-phoenix-1.oraclecloud.com/images/
    # Oracle-provided image "Oracle-Linux-7.5-2018.10.16-0"
    us-phoenix-1 = "ocid1.image.oc1.phx.aaaaaaaaoqj42sokaoh42l76wsyhn3k2beuntrh5maj3gmgmzeyr55zzrwwa"

    us-ashburn-1   = "ocid1.image.oc1.iad.aaaaaaaageeenzyuxgia726xur4ztaoxbxyjlxogdhreu3ngfj2gji3bayda"
    eu-frankfurt-1 = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaitzn6tdyjer7jl34h2ujz74jwy5nkbukbh55ekp6oyzwrtfa4zma"
    uk-london-1    = "ocid1.image.oc1.uk-london-1.aaaaaaaa32voyikkkzfxyo4xbdmadc2dmvorfxxgdhpnk6dw64fa3l4jh7wa"
  }
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

resource "oci_core_vcn" "test_vcn" {
  cidr_block     = "10.1.0.0/16"
  compartment_id = "${var.compartment_ocid}"
  display_name   = "TestVcn"
  dns_label      = "testvcn"
}

resource "oci_core_subnet" "test_subnet" {
  availability_domain = "${data.oci_identity_availability_domain.ad.name}"
  cidr_block          = "10.1.20.0/24"
  display_name        = "TestSubnet"
  dns_label           = "testsubnet"
  security_list_ids   = ["${oci_core_vcn.test_vcn.default_security_list_id}"]
  compartment_id      = "${var.compartment_ocid}"
  vcn_id              = "${oci_core_vcn.test_vcn.id}"
  route_table_id      = "${oci_core_vcn.test_vcn.default_route_table_id}"
  dhcp_options_id     = "${oci_core_vcn.test_vcn.default_dhcp_options_id}"
}

resource "oci_core_internet_gateway" "test_internet_gateway" {
  compartment_id = "${var.compartment_ocid}"
  display_name   = "Test_ig"
  vcn_id         = "${oci_core_vcn.test_vcn.id}"
}

resource "oci_core_default_route_table" "test_route_table" {
  manage_default_resource_id = "${oci_core_vcn.test_vcn.default_route_table_id}"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = "${oci_core_internet_gateway.test_internet_gateway.id}"
  }
}

resource "oci_core_instance" "test_instance" {
  availability_domain = "${data.oci_identity_availability_domain.ad.name}"
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "TestInstance"
  shape               = "${var.instance_shape}"

  create_vnic_details {
    subnet_id        = "${oci_core_subnet.test_subnet.id}"
    display_name     = "Primaryvnic"
    assign_public_ip = true
    hostname_label   = "testinstance"
  }

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.iad.aaaaaaaaazvqm5qnt4c7dbjn5tztubhbrsl7x34x2vxsvtns5bf63y6s2btq"
  }

  metadata = {
    ssh_authorized_keys = "${file("/home/oracle/.ssh/id_rsa_oci.pub")}"
  }

  timeouts {
    create = "60m"
  }
}

resource "oci_core_instance_console_connection" "test_instance_console_connection" {
  #Required
  instance_id = "${oci_core_instance.test_instance.id}"
  public_key  = "${file("/home/oracle/.ssh/id_rsa_oci.pub")}"
}

data "oci_identity_availability_domain" "ad" {
  compartment_id = "${var.tenancy_ocid}"
  ad_number      = 1
}

# Gets a list of vNIC attachments on the instance
data "oci_core_vnic_attachments" "instance_vnics" {
  compartment_id      = "${var.compartment_ocid}"
  availability_domain = "${data.oci_identity_availability_domain.ad.name}"
  instance_id         = "${oci_core_instance.test_instance.id}"
}

# Gets the OCID of the first (default) vNIC
data "oci_core_vnic" "instance_vnic" {
  vnic_id = "${lookup(data.oci_core_vnic_attachments.instance_vnics.vnic_attachments[0],"vnic_id")}"
}
