module "vm_instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "10.1.1"
  # insert the 1 required variable here
  network              = var.network
  project_id           = var.instance_template_project_id
  region               = var.instance_template_region
  name_prefix          = var.name_prefix
  service_account      = var.service_account
  source_image         = var.source_image
  metadata             = var.metadata
  source_image_family  = var.source_image_family
  source_image_project = var.source_image_project
  subnetwork           = var.subnetwork
  subnetwork_project   = var.subnetwork_project
  labels               = var.labels
  access_config        = var.access_config
  machine_type         = var.machine_type
  tags                 = var.tags

}
