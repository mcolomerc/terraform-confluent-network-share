# Confluent Network Sharing

Input: Array of network ids `[ "n-61rw8d", "n-pd05xr" ]`

All the networks in the array will be shared between each other.

Network list will be translated to a map: 

```
{
  "n-61rw8d" = [
    "n-pd05xr",
  ]
  "n-pd05xr" = [
    "n-61rw8d",
  ]
}
```

For each element of the map:

- Create a Network Share.
- Create an Network Endpoint for each of the network list for that element.

# Usage 

```hcl
module "network_sharing" { 
  source   = "github.com/mcolomerc/terraform-confluent-network-share" 
  environment = var.confluent.environment.id
  providers = {
    confluent.confluent_cloud = confluent.confluent_cloud 
  }
  confluent_cloud_network_ids = local.networks #`[ "n-61rw8d", "n-pd05xr" ]`
```


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_confluent"></a> [confluent](#requirement\_confluent) | >=1.51.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sharing"></a> [sharing](#module\_sharing) | ./modules/sharing | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_confluent_cloud_network_ids"></a> [confluent\_cloud\_network\_ids](#input\_confluent\_cloud\_network\_ids) | Confluent Cloud Network IDs | `list(string)` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Confluent Cloud Environment ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_share"></a> [network\_share](#output\_network\_share) | n/a |
<!-- END_TF_DOCS -->