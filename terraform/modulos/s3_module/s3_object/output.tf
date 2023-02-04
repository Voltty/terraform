output "file" {
  value = "${var.bucket}${aws_s3_bucket_object.object.key}"
}
output "etag" {
  value = aws_s3_bucket_object.object.etag
}
output "content_type" {
  value = aws_s3_bucket_object.object.content_type
}
output "object_meta" {
  value = aws_s3_bucket_object.object.metadata
}
