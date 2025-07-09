<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_auth0"></a> [auth0](#requirement\_auth0) | ~>0.50.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_auth0"></a> [auth0](#provider\_auth0) | ~>0.50.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [auth0_connection.this](https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/connection) | resource |
| [auth0_connection_clients.this](https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/connection_clients) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auth_params_response_type"></a> [auth\_params\_response\_type](#input\_auth\_params\_response\_type) | The response type for the authentication parameters. | `string` | `"code"` | no |
| <a name="input_auth_params_scope"></a> [auth\_params\_scope](#input\_auth\_params\_scope) | The scope for the authentication parameters. | `string` | `""` | no |
| <a name="input_brute_force_protection"></a> [brute\_force\_protection](#input\_brute\_force\_protection) | Indicates whether brute force protection is enabled for this connection. | `bool` | `true` | no |
| <a name="input_disable_signup"></a> [disable\_signup](#input\_disable\_signup) | Indicates whether signup is disabled for this connection. | `bool` | `true` | no |
| <a name="input_enabled_clients"></a> [enabled\_clients](#input\_enabled\_clients) | List of client IDs that are allowed to use this connection. | `list(string)` | `[]` | no |
| <a name="input_from"></a> [from](#input\_from) | The 'from' email address for email connections. | `string` | `"{{ application.name }} <root@auth0.com>"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the connection. If the strategy is 'email' or 'sms', this will be set to the strategy name. | `string` | `""` | no |
| <a name="input_non_persistent_attrs"></a> [non\_persistent\_attrs](#input\_non\_persistent\_attrs) | If there are user fields that should not be stored in Auth0 databases due to privacy reasons, you can add them to the DenyList here. | `list(string)` | `[]` | no |
| <a name="input_set_user_root_attributes"></a> [set\_user\_root\_attributes](#input\_set\_user\_root\_attributes) | Determines whether to sync user profile attributes (name, given\_name, family\_name, nickname, picture) at each login or only on the first login. Options include: on\_each\_login, on\_first\_login. Default value: on\_each\_login. | `string` | `"on_each_login"` | no |
| <a name="input_strategy"></a> [strategy](#input\_strategy) | The strategy of the connection, e.g., 'email', 'sms', 'okta', etc. | `string` | `""` | no |
| <a name="input_subject"></a> [subject](#input\_subject) | The subject line for email connections. | `string` | `"Welcome to {{ application.name }}"` | no |
| <a name="input_syntax"></a> [syntax](#input\_syntax) | Syntax of the template body. | `string` | `"liquid"` | no |
| <a name="input_template"></a> [template](#input\_template) | The template body for email connections. | `string` | `"<html>This is the body of the email</html>"` | no |
| <a name="input_totp_length"></a> [totp\_length](#input\_totp\_length) | Length of the TOTP code. | `number` | `6` | no |
| <a name="input_totp_time_step"></a> [totp\_time\_step](#input\_totp\_time\_step) | Seconds between allowed generation of new passwords. | `number` | `180` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auth0_connection_clients_id"></a> [auth0\_connection\_clients\_id](#output\_auth0\_connection\_clients\_id) | n/a |
| <a name="output_connection_id"></a> [connection\_id](#output\_connection\_id) | n/a |
| <a name="output_connection_name"></a> [connection\_name](#output\_connection\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
