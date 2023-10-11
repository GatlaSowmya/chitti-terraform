ESOURCEGROUP IMPORT :
---------------------------	
	
	   terraform import azurerm_resource_group.leviya /subscriptions/fadaacfa-db50-4251-b3b9-c1c5838955a2/resourceGroups/tera

VIRTUAL NETWORK IMPORT :
-------------------------

	   terraform import azurerm_virtual_network.myvnet1 /subscriptions/fadaacfa-db50-4251-b3b9-c1c5838955a2/resourceGroups/tera/providers/Microsoft.Network/virtualNetworks/terraformvm-vnet

SUBNET IMPORT :
----------------- 
	   
	       terraform import azurerm_subnet.example /subscriptions/fadaacfa-db50-4251-b3b9-c1c5838955a2/resourceGroups/tera/providers/Microsoft.Network/virtualNetworks/terraformvm-vnet/subnets/subnet1

