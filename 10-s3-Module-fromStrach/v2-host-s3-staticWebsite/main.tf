resource "aws_s3_bucket" "s3-website" {
  acl    = "public-read"
  bucket = var.bucket_name
  policy = <<EOF
  {
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "PublicReadGetObject",
          "Effect": "Allow",
          "Principal": "*",
          "Action": [
              "s3:GetObject"
          ],
          "Resource": [
              "arn:aws:s3:::${var.bucket_name}/*"
          ]
      }
  ]
}  
EOF

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  force_destroy = true
}