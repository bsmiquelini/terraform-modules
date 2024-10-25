module "storage_account" {
  source = "git::https://github.com/bsmiquelini/terraform-modules.git//modules/storage_account?ref=main"

  # Passando variáveis necessárias para o módulo
  resource_group_name = "meu-resource-group"
  location            = "East US"
  name                = "meu-storage-account"
  env                 = "Prod"
}
