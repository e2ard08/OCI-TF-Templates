resource "oci_core_virtual_network" "tf-vcn" {
  cidr_block = var.VCN-CIDR
  dns_label = "testVCN"
  compartment_id = oci_identity_compartment.tf-test.id
  display_name = "TF-VCN"
}

# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

# Gets the Id of a specific OS Images
data "oci_core_images" "OSImageLocal" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.OsImage
}
