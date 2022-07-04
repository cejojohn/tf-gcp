resource "google_compute_instance" "default" {
  count        = 2
  name         = "${var.my_vm_name_prefix}-${count.index}"
  machine_type = var.instance_machine_type
  zone         = "us-central1-a"
  network_interface {
    network = "default"
    access_config {
    }
  }

  tags = ["webservers"]

  boot_disk {
    initialize_params {
      image = var.instance_boot_disk
    }
  }
}

resource "google_compute_firewall" "rules" {
  name        = "my-firewall-rule"
  network     = "default"
  description = "Creates firewall rule targeting tagged instances"

  allow {
    protocol  = "tcp"
    ports     = ["22","80","443"]
  }
  source_ranges = ["0.0.0.0/0"]
  target_tags = ["webservers"]
}

output "Instance_PublicIP" {
  value = google_compute_instance.default.*.network_interface
}
