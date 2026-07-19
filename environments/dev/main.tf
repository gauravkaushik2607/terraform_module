module "azurerm_rg" {
  source  = "../../child/resource_group"
  rg_name = var.rg_name
}

module "azurerm_vnet" {
  source     = "../../child/virtual_network"
  depends_on = [module.azurerm_rg]
  vnets      = var.vnets
}

module "azurerm_subnet" {
  source     = "../../child/subnet"
  depends_on = [module.azurerm_vnet]
  subnets    = var.subnets
}

module "azurerm_pip" {
  source     = "../../child/public_ip"
  depends_on = [module.azurerm_vnet, module.azurerm_subnet, module.azurerm_rg]
  pips       = var.pips
}

module "azurerm_virtual_machine" {
  source     = "../../child/virtual_machine"
  depends_on = [module.azurerm_rg, module.azurerm_vnet, module.azurerm_subnet, module.azurerm_pip]
  vms        = var.vms
}