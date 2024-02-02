# module "vm_mig" {
#   source  = "terraform-google-modules/vm/google//modules/mig"
#   version = "10.1.1"
#   # insert the 2 required variables here
#   instance_template   = module.vm_instance_template.self_link
#   mig_name            = var.mig_name
#   named_ports         = var.named_ports
#   project_id          = var.project_id
#   hostname            = var.hostname
#   region              = var.region
#   health_check_name   = var.health_check_name
#   health_check        = var.health_check
#   max_replicas        = var.max_replicas
#   min_replicas        = var.min_replicas
#   autoscaling_enabled = var.autoscaling_enabled
#   autoscaling_cpu     = var.autoscaling_cpu
#   target_size         = var.target_size
# }
