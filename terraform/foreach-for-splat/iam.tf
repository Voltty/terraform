resource "aws_iam_user" "The-accounts" {
  for_each = toset(["Peterson", "pixaim", "vito", "enrico"])
  name     = each.key
}