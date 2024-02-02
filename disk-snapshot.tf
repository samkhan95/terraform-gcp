module "vm_compute_disk_snapshot" {
  source  = "terraform-google-modules/vm/google//modules/compute_disk_snapshot"
  version = "10.1.1"
  # insert the 5 required variables here
  name                      = var.snapshot_name
  project                   = var.snapshot_project
  region                    = var.snapshot_region
  snapshot_retention_policy = var.snapshot_retention_policy
  snapshot_schedule         = var.snapshot_schedule
  disks                     = var.snapshot_disks
}
