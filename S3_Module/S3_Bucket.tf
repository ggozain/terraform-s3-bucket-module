
resource "random_id" "server" {
  byte_length = 8
}

resource "aws_s3_bucket" "S3" {
  bucket = "${var.bucket_name}-${random_id.server.hex}" 
  object_lock_enabled = true
  tags = {
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "S3" {
  bucket = aws_s3_bucket.S3.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
    bucket = aws_s3_bucket.S3.id
    versioning_configuration {
      status = "Enabled"
  }

    
}
