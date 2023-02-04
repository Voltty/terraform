data "terraform_remote_state" "server" {
  backend = "s3"
  config = {
    region = var.region
    bucket = "tfstate-798134437613"
    key    = "dev/03-data-sources-s3/terraform.tfstate"
  }
}