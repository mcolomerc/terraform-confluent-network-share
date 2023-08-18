output "network_share" {
    value = { for sharing in module.sharing : sharing.network_share => sharing }
}
 