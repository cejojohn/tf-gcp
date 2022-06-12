variable "my_vm_name" {
  description = "Name of the instance to spin"
  type = string
  default = "cv-tf-1"
}

variable "instance_machine_type" {
  type = string
  default = "e2-micro"
}

variable "instance_boot_disk" {
  type = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"
}
