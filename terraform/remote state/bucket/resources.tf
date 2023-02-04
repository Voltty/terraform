data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "remote_state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
  tags = {
    name   = "remote_state"
  }
}

