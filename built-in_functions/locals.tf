locals {
  Quantidade_instancia = lookup(var.Quantidade_instancia, var.env)

  file_ext    = "zip"
  object_name = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    owner = "peterson"
    ano   = "2022"
  }
}