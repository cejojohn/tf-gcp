variable "my_vm_name_prefix" {
  description = "Name of the instance to spin"
  type = string
  default = "cv-tf"
}

variable "instances-list" {
  type = list(object({
    instance_machine_type = string
    instance_boot_disk    = string
    metadata_script       = string
  }))
  default = [
    {
      instance_machine_type = "e2-micro"
      instance_boot_disk    = "ubuntu-os-cloud/ubuntu-2004-lts"
      metadata_script       = "metadata_scripts/ubuntu2004.sh"
    },
    {
      instance_machine_type = "e2-micro"
      instance_boot_disk    = "centos-cloud/centos-stream-9"
      metadata_script       = "metadata_scripts/centos9.sh"
    }
  ]
}
