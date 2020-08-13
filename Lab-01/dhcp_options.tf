resource "oci_core_dhcp_options" "tf-dhcp" {
  compartment_id = oci_identity_compartment.tf-test.id
  vcn_id = oci_core_virtual_network.tf-vcn.id
  display_name = "DHCP Test"

  // required
  options {
    type = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }

  // optional
  options {
    type = "SearchDomain"
    search_domain_names = [ "foggykitchen.com" ]
  }
}
