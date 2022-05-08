provider "google" {
  credentials = file("~/.ssh/my-test-tf-d0b00619bb07.json")
  project     = "my-test-tf"
  region      = "us-central1"
}