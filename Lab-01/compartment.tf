resource "oci_identity_compartment" "tf-test" {
  name = "tf-test"
  description = "test Compartment"
  compartment_id = var.compartment_ocid
}

