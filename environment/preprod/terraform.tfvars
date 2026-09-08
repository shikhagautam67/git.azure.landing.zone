rgs = {
    rg1 = {
        name = "rg-lillyjasmine"
        location = "centralindia"
    }
    rg2 = {
        name = "rg-lillyjasmine000"
        location = "centralindia"
    }
}
vnets = {
        vnet1 = {
            name  = "vnet-lillyjasmine"
            location = "centralindia"
            resource_group_name = "rg-lillyjasmine"
            address_space  = ["10.0.0.0/16"]
        }
    }
    subnets = {
        snet1 = {
            name = "frontend-subnet123"
            resource_group_name = "rg-lillyjasmine"
            virtual_network_name  = "vnet-lillyjasmine"
            address_prefixes = ["10.0.1.0/24"]
        }
        snet2 = {
            name = "backend-subnet123"
            resource_group_name = "rg-lillyjasmine"
            virtual_network_name  = "vnet-lillyjasmine"
            address_prefixes = ["10.0.2.0/24"]
        }
    } 
     public_ips = {
    pip1 = {
  name                = "public_ip_frontend-vm123"
  resource_group_name = "rg-lillyjasmine"
  location            = "centralindia"
  allocation_method   = "Static"
    }
    pip2 = {
    name =  "public_ip_backend-vm123"
    resource_group_name = "rg-lillyjasmine"
    location = "centralindia"
    allocation_method = "Static"
} 
}
 vms = {
    vm1 = {

  nic_name                 = "frontend-vm-nic123"
  location                 = "centralindia"
  resource_group_name      = "rg-lillyjasmine"
  nic_subnet_name          = "frontend-subnet123"
  nic_virtual_network_name = "vnet-lillyjasmine"  
  nic_public_ip_name       = "public_ip_frontend-vm123"
    vm_name                = "frontend-vm123"
    vm_size                = "Standard_B2as_v2"
    admin_username         = "shikhapc" 
    admin_password         = "Shikhapc123@"
    }
vm2 = {
  nic_name                 = "backend-vm-nic123"
  location                 = "centralindia"
  resource_group_name      = "rg-lillyjasmine"
  nic_subnet_name          = "backend-subnet123"
  nic_virtual_network_name = "vnet-lillyjasmine"
  nic_public_ip_name       = "public_ip_backend-vm123"

  vm_name        = "backend-vm123"
  vm_size        = "Standard_B2as_v2"
  admin_username = "shikhapc"
  admin_password = "Shikhapc123@"
    }
   } 