hostname   = "myvm"
mig_name   = "mymig1"
mig_region = "us-central"
health_check = {
  type                = "http"
  initial_delay_sec   = 60
  check_interval_sec  = 30
  healthy_threshold   = 1
  timeout_sec         = 10
  unhealthy_threshold = 5
  response            = ""
  proxy_header        = "NONE"
  port                = 80
  request             = ""
  request_path        = "/"
  host                = ""
  enable_logging      = false
}
autoscaler_name     = "scaling1"
autoscaling_enabled = "true"
max_replicas        = 4
min_replicas        = 3
cooldown_period     = 60
named_ports = [{
  name = "http"
  port = 80
}]
autoscaling_scale_in_control = {
  percent_replicas = 10
  time_window_sec  = 300
  fixed_replicas   = null
}
autoscaling_cpu = [{
  predictive_method = "NONE"
  target            = 0.7
}]
