variable "compartment_ocid" {
  description = "Compartment's OCID where VCN will be created. "
}

variable "availability_domain" {
  description = "The Availability Domain of the instance. "
  default     = ""
}

variable "display_name" {
  description = "The name of the instance. "
  default     = ""
}

variable "subnet_id" {
  description = "The OCID of the master subnet to create the VNIC in. "
  default     = ""
}

variable "mysql_shape" {
  description = "Instance shape to use."
  default     = "MySQL.Free"
}

variable "admin_username" {
    description = "Username of the HeatWave MySQL admin account"
    default     = "admin"
}

variable "admin_password" {
    description = "Password for the admin user for HeatWave MySQL"
}

variable "configuration_id" {
    description = "MySQL Instance Configuration ID"
}

variable "mysql_data_storage_in_gb" {
    default = 50
}

variable "existing_mds_instance_id" {
  description = "OCID of an existing MDS instance to use"
  default     = ""
}