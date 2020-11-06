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

variable "type" {
  type = string
  default = "SIMPLE"
}

variable "frequency" {
  type = number
  default = 5
  description = "Frequency in unit minute"
}

variable "status" {
  type = string
  default    = "ENABLED"
}

variable "locations" {
  type = list(string)
  default = ["AWS_US_EAST_1", "AWS_US_EAST_2"]
}

variable "uri" {
  type = string
  default = "https://example.com"
  description = "Required for type SIMPLE and BROWSER"
}

variable "validation_string" {
  type = string 
  default = null
  description = "Optional for type SIMPLE and BROWSER"
}

variable "verify_ssl" {
  type = bool
  default = true
}
