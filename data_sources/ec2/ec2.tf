resource "aws_instance" "web" {
  ami =  "ami-06640050dc3f556bb"   #data.aws_ami.debian.id | n usei para n gastar meu dinheiro sem querer
  instance_type =  var.instanceT
}