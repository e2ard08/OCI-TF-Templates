resource "oci_core_route_table" "tf-rtb" {
    compartment_id = oci_identity_compartment.tf-test.id
    vcn_id = oci_core_virtual_network.tf-vcn.id
    display_name = "Route Table "
    route_rules {
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
        network_entity_id = oci_core_internet_gateway.tf-igw.id
    }
}
