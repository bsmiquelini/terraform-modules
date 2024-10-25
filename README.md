# terraform-modules

### Chamando o modulo de storage_account:
```
module "storage_account" {
  source = "git::https://github.com/bsmiquelini/terraform-modules.git//modules/storage_account?ref=main"

  # Passando variáveis necessárias para o módulo
  resource_group_name = "my-rg"
  location            = "East US"
  name                = "my-st"
  env                 = "Prod"
}
```

```
module "storage_account" {
  source = "git::https://github.com/bsmiquelini/terraform-modules.git//modules/storage_account?ref=main"

  # Passando variáveis necessárias para o módulo
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  name                = "my-st"
  env                 = "Prod"
}
```
