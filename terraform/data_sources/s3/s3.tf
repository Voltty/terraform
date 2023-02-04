resource "random_pet" "pet" {
  length = 5
}
resource "aws_s3_bucket" "balde" {
  bucket = "my-bucket-${random_pet.pet.id}"
}
resource "aws_s3_bucket_object" "upload" {
  bucket       = aws_s3_bucket.balde.bucket
  key          = "instance/instances-${local.instance.ami}.json"
  source       = "output.json"
  etag         = filemd5("output.json")
  content_type = "application/json"
}