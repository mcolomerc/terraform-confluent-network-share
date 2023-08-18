  

// Create a network link service for each Network ID accepting all other networks 
resource "confluent_network_link_service" "network_service" {  
  display_name = "network_service-${var.network_id}"
  environment {
    id = var.environment
  }
  network {
    id = var.network_id
  }
  description = "network_service-${var.network_id}"
  accept {
    environments = [var.environment]
    networks = var.networks
  } 
}
 

// Create a network link endpoint for each network link service
resource "confluent_network_link_endpoint" "endpoint" {
  for_each = toset(var.networks)
  display_name = "network_link_endpoint - ${each.value}" 
  description  = "Network Link Endpoint - ${each.value}"
  environment {
    id = var.environment
  }
  network {
    id = each.value
  }
  network_link_service {
    id = confluent_network_link_service.network_service.id
  } 
  depends_on = [confluent_network_link_service.network_service]
}
