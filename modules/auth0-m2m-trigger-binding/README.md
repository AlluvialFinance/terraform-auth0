### `Auth0 M2M Trigger Binding`  

```
module "test" {
  source  = "../"
  actions    = [
    {
      id   = module.action.my_action_a.output.id
      name = module.action.my_action_a.outputs.display_name
    },
    {
      id   = module.action.my_action_b.outputs.id
      name = module.action.my_action_b.outputs.display_name
    }
  ]
}

terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "~>0.37.1" # Refer to docs for latest version
    }
  }
}

provider "auth0" {
  domain        = ""
  client_id     = ""
  client_secret = ""
}
```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_auth0"></a> [auth0](#requirement\_auth0) | ~>0.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_auth0"></a> [auth0](#provider\_auth0) | ~>0.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [auth0_trigger_binding.m2m_flow](https://registry.terraform.io/providers/auth0/auth0/latest/docs/resources/trigger_binding) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | n/a | `list(map(string))` | `[]` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
