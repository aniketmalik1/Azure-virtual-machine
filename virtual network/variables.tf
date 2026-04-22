variable "resource_group_name" {
  type        = string
  default     = "vnet-rg"
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region for resources"
}

variable "vnet_name" {
  type        = string
  default     = "my-vnet"
  description = "Name of the virtual network"
}

variable "address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "Address space for the virtual network"
}

variable "subnets" {
  type = map(object({
    name             = string
    address_prefixes = list(string)
  }))
  default = {
    subnet1 = {
      name             = "default-subnet"
      address_prefixes = ["10.0.1.0/24"]
    }
    subnet2 = {
      name             = "app-subnet"
      address_prefixes = ["10.0.2.0/24"]
    }
    subnet3 = {
      name             = "database-subnet"
      address_prefixes = ["10.0.3.0/24"]
    }
  }
  description = "Map of subnets to create"
}

variable "nsg_name" {
  type        = string
  default     = "my-nsg"
  description = "Name of the network security group"
}
