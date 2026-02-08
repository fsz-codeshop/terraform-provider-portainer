# Custom Headers Example

This example demonstrates how to configure the Portainer provider to use custom HTTP headers. This is particularly useful when Portainer is behind a security proxy like Cloudflare Access, which requires specific headers (`CF-Access-Client-Id` and `CF-Access-Client-Secret`) for service-to-service authentication.

## Usage

1.  Copy `terraform.tfvars.example` to `terraform.tfvars`.
2.  Fill in your Portainer URL, API Key, and Cloudflare Access credentials.
3.  Run `terraform init`.
4.  Run `terraform apply`.

## Configuration

```hcl
provider "portainer" {
  endpoint = "https://portainer.example.com"
  api_key  = "your-api-key"

  custom_headers = {
    "CF-Access-Client-Id"     = "your-client-id"
    "CF-Access-Client-Secret" = "your-client-secret"
  }
}
```

<!-- BEGIN_TF_DOCS -->


## Providers

| Name | Version |
|------|---------|
| <a name="provider_portainer"></a> [portainer](#provider\_portainer) | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [portainer_user.example_user](https://registry.terraform.io/providers/portainer/portainer/latest/docs/resources/user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cf_access_client_id"></a> [cf\_access\_client\_id](#input\_cf\_access\_client\_id) | Cloudflare Access Client ID | `string` | n/a | yes |
| <a name="input_cf_access_client_secret"></a> [cf\_access\_client\_secret](#input\_cf\_access\_client\_secret) | Cloudflare Access Client Secret | `string` | n/a | yes |
| <a name="input_portainer_api_key"></a> [portainer\_api\_key](#input\_portainer\_api\_key) | Portainer API key | `string` | n/a | yes |
| <a name="input_portainer_url"></a> [portainer\_url](#input\_portainer\_url) | Portainer API endpoint | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
