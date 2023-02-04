variable "env" {}
variable "ami" {
  type        = string
  description = "imagem de maquina amazon"
  default     = "ami-06640050dc3f556bb"
}
variable "tipo_instancia" {
  type        = object({
    dev = string
    prod = string
  })
  description = "tipo de instancia"
  default = {
    dev = "t1.micro"
    prod = "t2.micro"
  }
  
}
variable "Quantidade_instancia" {
  type = object({
    dev  = number
    prod = number
  })
  description = "Quantidade de maquinas"
  default = {
    dev  = 1
    prod = 3
  }
}
variable "aws_region" {
  type        = string
  description = "regiao da aws"
  default     = "us-east-1"
}