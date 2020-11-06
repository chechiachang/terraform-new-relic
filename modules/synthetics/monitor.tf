resource "newrelic_synthetics_monitor" "main" {
  name      = var.name
  type      = var.type
  frequency = var.frequency
  status    = var.status
  locations = var.locations

  uri               = var.uri
  validation_string = var.validation_string
  verify_ssl        = var.verify_ssl
}
