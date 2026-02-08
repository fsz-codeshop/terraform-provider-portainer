terraform {
  required_providers {
    portainer = {
      source = "portainer/portainer"
    }
  }
}

provider "portainer" {
  endpoint = var.portainer_url
  api_key  = var.portainer_api_key

  # Example of using custom headers for authentication proxies like Cloudflare Access
  custom_headers = {
    "CF-Access-Client-Id"     = var.cf_access_client_id
    "CF-Access-Client-Secret" = var.cf_access_client_secret
  }
}

resource "portainer_user" "example_user" {
  username = "example-user"
  password = "example-password"
  role     = 2
}
