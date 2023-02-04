resource "aws_s3_bucket_object" "object" {
  bucket       = var.name
  key          = var.key
  source       = var.src
  etag         = filemd5(var.src)
  content_type = lookup(var.file_types, regex("\\.[^\\.]+\\z", var.src), var.default_file_type)
}