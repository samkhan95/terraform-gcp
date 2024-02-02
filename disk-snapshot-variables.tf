variable "snapshot_name" {
  type    = string
  default = "disk1-snapshot"
}

variable "snapshot_project" {
  type    = string
  default = "samad-410909"
}

variable "snapshot_region" {
  type    = string
  default = "us-central1"
}

variable "snapshot_retention_policy" {
  type = object(
    {
      max_retention_days    = number
      on_source_disk_delete = string
    }
  )
  default = {
    max_retention_days    = 7
    on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
  }
}

variable "snapshot_disks" {
  type    = list(string)
  default = ["projects/samad-410909/disks/disk-data/zones/us-central1-a", "projects/samad-410909/disks/disk-1/zones/us-central1-a"]
}

variable "snapshot_schedule" {
  type = object(
    {
      daily_schedule = object(
        {
          days_in_cycle = number
          start_time    = string
        }
      )
      hourly_schedule = object(
        {
          hours_in_cycle = number
          start_time     = string
        }
      )
      weekly_schedule = object(
        {
          day_of_weeks = set(object(
            {
              day        = string
              start_time = string
            }
          ))
        }
      )
    }
  )
  default = {
    daily_schedule = {
      days_in_cycle = 1
      start_time    = "08:00"
    }
    hourly_schedule = {
      hours_in_cycle = 5
      start_time     = "08:00"
    }
    weekly_schedule = {
      day_of_weeks = [{
        day        = "MONDAY"
        start_time = "08:00"
        },
        {
          day        = "FRIDAY"
          start_time = "08:00"
      }]
    }
  }
}
