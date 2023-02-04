resource "aws_s3_bucket" "balde" {
  bucket = "built-in-${data.aws_caller_identity.id.account_id}-functions${var.env}"
  acl    = "private"
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "upload" {
  bucket       = aws_s3_bucket.balde.bucket
  key          = "${uuid()}.${local.file_ext}"
  source       = data.archive_file.json.output_path
  etag         = filemd5(data.archive_file.json.output_path)
  content_type = "application/zip"

  tags = local.common_tags
}