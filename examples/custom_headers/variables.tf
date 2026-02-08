variable "portainer_url" {
  type        = string
  description = "Portainer API endpoint"
}

variable "portainer_api_key" {
  type        = string
  description = "Portainer API key"
  sensitive   = true
}

variable "cf_access_client_id" {
  type        = string
  description = "Cloudflare Access Client ID"
  sensitive   = true
}

variable "cf_access_client_secret" {
  type        = string
  description = "Cloudflare Access Client Secret"
  sensitive   = true
}
