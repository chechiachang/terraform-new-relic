#data "newrelic_entity" "main" {
#  name = var.name
#  domain = var.domain
#  type = var.type
#}

resource "newrelic_alert_policy" "golden_signal_policy" {
  name = var.name
}
