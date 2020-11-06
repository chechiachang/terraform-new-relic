#provider

variable "account_id" {
  type = string
  default = null
  description = "export NEW_RELIC_ACCOUNT_ID"
}

variable "api_key" {
  type = string
  default = null
  description = "export NEW_RELIC_API_KEY"
}

variable "region" {
  type = string
  default = "US"
}

# monitor

variable "name" {
  type = string
}

variable "domain" {
  type = string
  default = "APM"
  description = "APM or BROWSER, INFRA, MOBILE, SYNTH, depending on your entity's domain"
}

variable "type" {
  type = string
  default = "APPLICATION"
}
