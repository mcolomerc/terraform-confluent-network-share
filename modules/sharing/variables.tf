variable "network_id" {
  type = string
  description = "Confluent Cloud Network ID"
}


variable "networks" {
  type = list(string)
  description = "Confluent Cloud Networks"
}

variable "environment" {
  type        = string
  description = "Confluent Cloud Environment ID"
}