resource "google_compute_instance" "test_node" {
  name         = "test-node"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  attached_disk {
    source      = google_compute_disk.default.id
    device_name = google_compute_disk.default.name
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }

  # Ignore changes for persistent disk attachments
  lifecycle {
    ignore_changes = [attached_disk]
  }


}
