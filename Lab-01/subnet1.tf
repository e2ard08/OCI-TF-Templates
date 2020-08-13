resource "oci_core_subnet" "tf-subnet" {
  cidr_block = "10.0.1.0/24"
  display_name = "Tf-Subnet"
  dns_label = "tfn1"
  compartment_id = oci_identity_compartment.tf-test.id
  vcn_id = oci_core_virtual_network.tf-vcn.id
  route_table_id = oci_core_route_table.tf-rtb.id
  dhcp_options_id = oci_core_dhcp_options.tf-dhcp.id
  security_list_ids = [oci_core_security_list.tf-sglist.id]
}


