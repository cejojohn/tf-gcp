variable "my_vm_name_prefix" {
  description = "Name of the instance to spin"
  type = string
  default = "cv-tf"
}

variable "instance_machine_type" {
  type = string
  default = "e2-micro"
}

variable "instance_boot_disk" {
  type = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
