# data "aws_ami" "ubuntu" { NAO USEI POR TALVEZ TER Q PAGAR
#   owners = ["amazon"]
#   most_recent = true
#   name_regex = "ubuntu"
#   filter {
#     name = "architecture"
#     values = "x86_64"
#   }
# }
resource "aws_instance" "this" {
  for_each = {
    web = {
      name = "Web server"
      type = "t2.micro"
    }
    ci_cd = {
      name = "CI/CD server"
      type = "t1.micro"
    }
  }
  ami           = "ami-090fa75af13c156b4" #data.aws_ami.ubuntu.id NAO USEI POR TALVEZ TER Q PAGAR
  instance_type = lookup(each.value, "type", null)

  tags = {
    Projeto = "curso aws com terraform"
    nome    = "${each.key}: ${lookup(each.value, "name", null)}"
  }
}