resource "aws_instance" "instancia" {
  ami           = var.ami
  instance_type = var.instance

  tags = {
    name   = "teste"
    data   = "teste1"
    versao = "teste2"
  }
}

