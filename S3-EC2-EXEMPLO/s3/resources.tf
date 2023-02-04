# resource "aws_s3_bucket" "balde" {
#   bucket = random_pet.name.id
#   acl    = "private"
#   tags = {
#     name   = "teste"
#     data   = "teste1"
#     versao = "teste2"
#   }
# }
data "aws_caller_identity" "idnome" {}
resource "aws_s3_bucket" "balde" {
  bucket = data.aws_caller_identity.idnome.account_id
  acl    = "private"
  tags = {
    name   = "teste"
    data   = "teste1"
    versao = "teste2"
  }
}
