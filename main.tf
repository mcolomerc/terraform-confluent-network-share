 
 
module "sharing" {
  for_each    = { for network_id in var.confluent_cloud_network_ids : network_id => [for nw in var.confluent_cloud_network_ids : nw if nw != network_id] }
  source      = "./modules/sharing"
  network_id  = each.key
  networks    = each.value
  environment = var.environment
  providers = {
    confluent = confluent.confluent_cloud
  }
}
