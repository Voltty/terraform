output "name" {
  value = aws_s3_bucket.balde.id
}
output "arn" {
  value = aws_s3_bucket.balde.arn
}
# output "website" {
#   value = aws_s3_bucket.website_endpoint
# }
output "regional_domain_name" {
  value = aws_s3_bucket.balde.bucket_regional_domain_name
}
# output "domain_name" {
#   value = aws_s3_bucket.balde.domain_name
# }
output "website_domain" {
  value = aws_s3_bucket.balde.website_domain
}
output "hosted_zone_id" {
  value = aws_s3_bucket.balde.hosted_zone_id
}
