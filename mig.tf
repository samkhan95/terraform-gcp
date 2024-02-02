module "mig" {
  source                       = "terraform-google-modules/vm/google//modules/mig"
  hostname                     = var.hostname
  mig_name                     = var.mig_name
  region                       = var.mig_region
  instance_template            = module.instance_template.self_link
  health_check_name            = var.health_check_name
  health_check                 = var.health_check
  autoscaler_name              = var.autoscaler_name
  autoscaling_enabled          = var.autoscaling_enabled
  max_replicas                 = var.max_replicas
  min_replicas                 = var.min_replicas
  cooldown_period              = var.cooldown_period
  autoscaling_cpu              = var.autoscaling_cpu
  named_ports                  = var.named_ports
  autoscaling_scale_in_control = var.autoscaling_scale_in_control
}


# module "vm_mig" {
#   source  = "terraform-google-modules/vm/google//modules/mig"
#   version = "10.1.1"
#   # insert the 2 required variables here
#   instance_template   = module.vm_instance_template.self_link
#   mig_name            = var.mig_name
#   named_ports         = var.named_ports
#   project_id          = var.mig_project_id
#   hostname            = var.hostname
#   region              = var.mig_region
#   health_check_name   = var.health_check_name
#   health_check        = var.health_check
#   max_replicas        = var.max_replicas
#   min_replicas        = var.min_replicas
#   autoscaling_enabled = var.autoscaling_enabled
#   autoscaling_cpu     = var.autoscaling_cpu
#   target_size         = var.target_size
# }
