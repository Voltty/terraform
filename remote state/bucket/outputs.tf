output "bucket_name" {
  value = aws_s3_bucket.remote_state.bucket
}
output "bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
}
output "bucket_domain_name" {
  value = aws_s3_bucket.remote_state.bucket_domain_name
}
