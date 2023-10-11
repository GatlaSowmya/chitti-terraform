provider "azurerm" {
  features {}

  subscription_id    = "fadaacfa-db50-4251-b3b9-c1c5838955a2"
  client_id       = "549ca41a-9a77-4ef2-92a2-f516a31be703"
  client_secret  = "~RF8Q~DIzeUkjeC3p_Vo_gIibriDbuR5i4iNia1b"
  tenant_id       = "d2880c00-328c-4e70-9a96-c2298a2745b0"

}

resource "azurerm_resource_group" "leviya" {
  name     = "tera"
  location = "west us"
}

resource "azurerm_virtual_network" "myvnet1" {
  name                = "sowmya-vnet1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.leviya.location
  resource_group_name = azurerm_resource_group.leviya.name
}

resource "azurerm_subnet" "example" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.leviya.name
  virtual_network_name = azurerm_virtual_network.myvnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}
