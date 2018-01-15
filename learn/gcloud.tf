// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("account.json")}"
  project     = "strange-flame-188720"
  region      = "europe-west1"
}

// Create a new VM instance
resource "google_compute_instance" "default" {
  name         = "first-vm"
  machine_type = "n1-standard-1"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-8"
    }
  }

  network_interface {
    network       = "default"
    access_config = {}
  }
}
