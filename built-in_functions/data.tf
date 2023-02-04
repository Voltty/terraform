data "aws_caller_identity" "id" {}
data "template_file" "json" {
  template = file("template.json.tpl")

  vars = {
    age    = 33
    eye    = "marrom"
    name   = "Peterson"
    Gender = "masculino"
  }
}

data "archive_file" "json" {
  type        = local.file_ext
  output_path = "${path.module}/files/${local.object_name}.${local.file_ext}"

  source {
    content  = data.template_file.json.rendered
    filename = "${local.object_name}.json"

  }
}