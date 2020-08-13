resource "oci_core_internet_gateway" "tf-igw" {
    compartment_id = oci_identity_compartment.tf-test.id
    display_name = "FoggyKitchenInternetGateway"
    vcn_id = oci_core_virtual_network.tf-vcn.id
}
