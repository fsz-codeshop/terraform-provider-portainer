# E2E Test: Custom Headers (Automated Validation)

This test verifies that `custom_headers` are correctly injected by the provider. It uses a **real-world simulation** of an authentication proxy.

## How it works

1.  **NGINX Proxy**: The `docker-compose.yml` starts an NGINX container that acts as a gatekeeper for Portainer.
2.  **Enforcement**: NGINX is configured to return **403 Forbidden** unless the incoming request contains the header `X-Test-Header: test-value`.
3.  **Validation**: By pointing this test to the NGINX port (`8081`), the test will **only pass** if the provider successfully injects the custom headers. If the feature breaks, the test fails with a 403 error.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_portainer"></a> [portainer](#provider\_portainer) | 0.1.0 |

## Resources

| Name | Type |
|------|------|
| [portainer_tag.test_tag](https://registry.terraform.io/providers/portainer/portainer/latest/docs/resources/tag) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_portainer_password"></a> [portainer\_password](#input\_portainer\_password) | Portainer password | `string` | `"password123456789"` | no |
| <a name="input_portainer_skip_ssl_verify"></a> [portainer\_skip\_ssl\_verify](#input\_portainer\_skip\_ssl\_verify) | Set to true to skip TLS certificate verification (useful for self-signed certs) | `bool` | `true` | no |
| <a name="input_portainer_url"></a> [portainer\_url](#input\_portainer\_url) | Default Portainer URL (Points to NGINX Proxy for header validation) | `string` | `"http://localhost:8081"` | no |
| <a name="input_portainer_username"></a> [portainer\_username](#input\_portainer\_username) | Portainer username | `string` | `"admin"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
