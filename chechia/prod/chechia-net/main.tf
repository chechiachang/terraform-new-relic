module "minitor-simple-chechia-net" {
  source = "git@github.com:chechiachang/terraform-new-relic.git//modules/synthetics?ref=v0.0.1"

  name      = "chechia.net Webpage Simple"
  type      = "SIMPLE"
  frequency = 5
  locations = ["AWS_US_EAST_1", "AWS_US_EAST_2"]
  uri       = "https://chechia.net"
}

module "alert-policy" {
  source = "git@github.com:chechiachang/terraform-new-relic.git//modules/alert-policy?ref=v0.0.1"

  name = "Global alert policy: test"
}
