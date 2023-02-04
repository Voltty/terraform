resource "aws_instance" "ec2" {
  count = local.Quantidade_instancia < 1 ? 0 : local.Quantidade_instancia

  ami           = var.ami
  instance_type = lookup(var.tipo_instancia, var.env)
  tags = merge(
    local.common_tags,
    {
      Project = "AWS terraform"
      env     = format("%s", var.env)
      name    = format("instance %d", count.index + 1)
    }
  )
}