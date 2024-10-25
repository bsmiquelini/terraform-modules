variable "resource_group_name" {
  type        = string
  description = "Nome do Resource Group"
}

variable "location" {
  type        = string
  description = "Região"
}

variable "storage_account_name" {
  type        = string
  description = "Nome do storage Account"
}

variable "env" {
  type        = string
  description = "Nome do enviroment do recurso"
}

variable "subscription_id" {
  type        = string
  description = "ID da subscrição para o módulo"
}

