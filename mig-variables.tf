variable "mig_name" {
  type    = string
  default = "dev-mig"

}

variable "named_ports" {
  type = list(object({
    name = string
    port = number
  }))
  default = [{
    name = "http"
    port = 80
  }]
}

variable "health_check_name" {
  type    = string
  default = "health-check-port-80"
}

variable "health_check" {
  type = object({
    type                = string
    initial_delay_sec   = number
    check_interval_sec  = number
    healthy_threshold   = number
    timeout_sec         = number
    unhealthy_threshold = number
    response            = string
    proxy_header        = string
    port                = number
    request             = string
    request_path        = string
    host                = string
    enable_logging      = bool
  })
  default = {
    type                = "http"
    check_interval_sec  = 30
    enable_logging      = false
    healthy_threshold   = 1
    host                = ""
    initial_delay_sec   = 30
    port                = 80
    proxy_header        = "NONE"
    request             = ""
    request_path        = "/"
    response            = ""
    timeout_sec         = 10
    type                = ""
    unhealthy_threshold = 5
  }
}

variable "min_replicas" {
  type    = number
  default = 2
}

variable "max_replicas" {
  type    = number
  default = 4
}

variable "autoscaling_enabled" {
  type    = string
  default = "true"
}

variable "autoscaling_cpu" {
  type = list(object({
    target            = number
    predictive_method = string
  }))
  default = [
    {
      target            = 0.8
      predictive_method = "linear"
  }]
}

variable "target_size" {
  type    = number
  default = 1
}

variable "hostname" {
  type    = string
  default = "myvm"
}
