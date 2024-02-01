variable "network" {
  type = string
}

variable "access_config" {
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = [{
    nat_ip       = ""
    network_tier = "PREMIUM"
  }]
}

variable "service_account" {
  type = object({
    email  = string
    scopes = set(string)
  })
  default = {
    email  = "66594257540-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}

variable "name_prefix" {
  type    = string
  default = "linux-vm"
}

variable "source_image" {
  type    = string
  default = "debian-12-bookworm-v20240110"
}

variable "source_image_family" {
  type    = string
  default = "debian-12"
}

variable "source_image_project" {
  type    = string
  default = "debian-cloud"
}

variable "subnetwork" {
  type = string
}

variable "subnetwork_project" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "e2-medium"
}

variable "metadata" {
  type = map(string)
  default = {
    "enable-oslogin" = "TRUE"
  }
}

variable "tags" {
  type    = list(string)
  default = ["http-server", "https-server", "app-1"]
}

variable "labels" {
  type = map(string)
  default = {
    "mig_name" = "dev-mig"
  }
}
