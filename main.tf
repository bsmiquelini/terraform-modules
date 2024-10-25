locals {
  tags = {
    "env" = var.env
  }
}

resource "azurerm_storage_account" "sec_storage" {
  resource_group_name = var.resource_group_name 
  name = var.storage_account_name
  location = var.location
  account_tier = "Standard"
  # Se env for Prod, GRS, se não, LSR
  account_replication_type = var.env == "Prod" ? "GRS" : "LSR"
  public_network_access_enabled = false

  tags = local.tags
}
