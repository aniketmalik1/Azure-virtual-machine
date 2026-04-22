output "resource_group_id" {
  value       = azurerm_resource_group.vnet_rg.id
  description = "ID of the resource group"
}

output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "ID of the virtual network"
}

output "vnet_name" {
  value       = azurerm_virtual_network.vnet.name
  description = "Name of the virtual network"
}

output "subnet_ids" {
  value = {
    for key, subnet in azurerm_subnet.subnets : key => subnet.id
  }
  description = "Map of subnet names to their IDs"
}

output "nsg_id" {
  value       = azurerm_network_security_group.nsg.id
  description = "ID of the network security group"
}

output "nsg_name" {
  value       = azurerm_network_security_group.nsg.name
  description = "Name of the network security group"
}
