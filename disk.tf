# Using pd-standard because it's the default for Compute Engine

resource "google_compute_disk" "default" {
  name = "disk-data"
  type = "pd-standard"
  zone = "us-central1-a"
  size = "50"
}
