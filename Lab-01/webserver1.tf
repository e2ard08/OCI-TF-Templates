resource "oci_core_instance" "tf-web" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.tf-test.id
  display_name = "tf-web"
  shape = var.Shapes[0]
  subnet_id = oci_core_subnet.tf-subnet.id
  source_details {
    source_type = "image"
    source_id   = lookup(data.oci_core_images.OSImageLocal.images[0], "id")
  }
  metadata = {
      ssh_authorized_keys = file(var.public_key_oci)
  }
  create_vnic_details {
     subnet_id = oci_core_subnet.tf-subnet.id
     assign_public_ip = true 
  }
}

data "oci_core_vnic_attachments" "tf-vnic-attach" {
  availability_domain = lookup(data.oci_identity_availability_domains.ADs.availability_domains[1], "name")
  compartment_id = oci_identity_compartment.tf-test.id
  instance_id = oci_core_instance.tf-web.id
}

data "oci_core_vnic" "tf_vnic1" {
  vnic_id = data.oci_core_vnic_attachments.tf-vnic-attach.vnic_attachments.0.vnic_id
}

output "tf-Webserver1PublicIP" {
   value = [data.oci_core_vnic.tf_vnic1.public_ip_address]
}
