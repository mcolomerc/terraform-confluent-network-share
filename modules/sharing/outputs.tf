output "network_share" {
    value = confluent_network_link_service.network_service.id
}

output "network_endpoints" {
    value = { for endpoint in confluent_network_link_endpoint.endpoint : endpoint.id => endpoint } 
}