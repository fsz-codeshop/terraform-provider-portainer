terraform {
  required_providers {
    portainer = {
      source = "portainer/portainer"
    }
  }
}

provider "portainer" {
  endpoint        = var.portainer_url
  api_user        = var.portainer_username
  api_password    = var.portainer_password
  skip_ssl_verify = var.portainer_skip_ssl_verify

  custom_headers = {
    "X-Test-Header" = "test-value"
  }
}

resource "portainer_tag" "test_tag" {
  name = "test-custom-headers-tag"
}
