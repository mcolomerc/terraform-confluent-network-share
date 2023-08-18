 
variable "environment" {
  type        = string
  description = "Confluent Cloud Environment ID"
}

# List of Confluent Network IDs
variable "confluent_cloud_network_ids" {
  type        = list(string)
  description = "Confluent Cloud Network IDs"
}

