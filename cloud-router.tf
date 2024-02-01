module "cloud-router" {
  source  = "terraform-google-modules/cloud-router/google"
  version = "6.0.2"
  # insert the 4 required variables here
  name    = var.router_name
  region  = var.router_region
  project = var.router_project_id
  network = var.router_network_name
  nats    = var.nats

}
