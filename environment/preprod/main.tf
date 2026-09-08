module "resource_group" {
    source = "../../module/azurerm_resource_group"
   rgs = var.rgs
}
module "virtual_network" {
    depends_on = [ module.resource_group ]
    source = "../../module/azurerm_virtual_network"
    vnets  = var.vnets
    }
module "subnet" {
    depends_on = [ module.virtual_network ]
    source = "../../module/azurerm_subnet"
    subnets = var.subnets
}
module "public_ip" {
    depends_on = [ module.subnet ]
    source = "../../module/azurerm_public_ip"
    public_ips = var.public_ips
}
module "virtual_machine" {
    depends_on = [ module.public_ip,module.subnet ]
    source = "../../module/azurerm_virtual_machine"
    vms = var.vms
 }