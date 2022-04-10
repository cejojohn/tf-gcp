resource "google_compute_instance" "default" {
  name         = "cv-tf-1"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  count        = 1
  network_interface {
    network = "default"
    access_config {
    }
  }
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
}
