// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project = "strange-flame-188720"
  region = "europe-west1"
}
/*
// Create a new network
data "google_compute_network" "my-network" {
  name = "default-europe-west1"
}

data "google_compute_subnetwork" "my-subnetwork" {
  name   = "default-europe-west1"
  region = "europe-west1"
}*/


// Create a new instance
resource "google_compute_instance" "default" {
  name = "first-vm"
  machine_type = "n1-standard-1"
  zone = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
