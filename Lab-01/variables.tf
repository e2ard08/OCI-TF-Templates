variable "tenancy_ocid" {
  default = "ocid1.tenancy.oc1..aaaaaaaaoi6b5sxlv4z773boczybqz3h2vspvvru42jysvizl77lky22ijaq"
}
variable "user_ocid" {
  default = "ocid1.user.oc1..aaaaaaaa2u4sptbw6hsncbqqpst3al7g2tlws2g2qiqqvt7r5dnkjwi4sxkq"
}
variable "fingerprint" {
  default = "c8:e7:4e:bc:88:41:2c:e6:96:01:ee:22:1b:35:25:33"
}
variable "private_key_path" {
  default = "oci_api_key.pem"
}
variable "compartment_ocid" {
  default = "ocid1.compartment.oc1..aaaaaaaagvevo2ffq6c4ukqza6t3ui4ttk6iluyoqngq3ef474gn3cijvpja"
}
variable "region" {
  default = "us-ashburn-1"
}
variable "private_key_oci" {
  default = "id_rsa"
}
variable "public_key_oci" {
  default = "id_rsa.pub"
}

variable "VCN-CIDR" {
  default = "10.0.0.0/16"
}

variable "VCNname" {
  default = "tf-vcn"
}

variable "Shapes" {
 default = ["VM.Standard.E2.1","VM.Standard.E2.1.Micro","VM.Standard2.1","VM.Standard.E2.1","VM.Standard.E2.2"]
}

variable "OsImage" {
  default = "Oracle-Linux-7.8-2020.05.26-0"
}

variable "service_ports" {
  default = [80,443,22]
}

