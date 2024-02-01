module "cloud-router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "6.0.2"
  # insert the 4 required variables here
  name    = var.router_name
  region  = var.region
  project = var.project_id
  network = var.network_name
  nats    = var.nats

}
