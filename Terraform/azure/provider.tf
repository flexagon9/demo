# Configure the Microsoft Azure Provider
variable "subscriptionId" {
  type = string
}
variable "clientId" {
  type = string
}
variable "clientSecret" {
  type = string
}
variable "tenantId" {
  type = string
}

provider "azurerm" {
    version = "=1.36.0"
    subscription_id = var.subscriptionId
    client_id       = var.clientId
    client_secret   = var.clientSecret
    tenant_id       = var.tenantId	 
}
