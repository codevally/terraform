resource "aws_s3_bucket" "tfstate" {
  bucket = "terraformtraining-7538"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
