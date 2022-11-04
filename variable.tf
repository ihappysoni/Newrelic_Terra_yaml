variable "api_key" {
  type = string 
  default = var.secrets.NEW_RELIC_API_KEY 
}
variable "account_id" {
  type = number
  default = var.secrets.NEW_RELIC_ACCOUNT_ID
}