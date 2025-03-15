resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-practice-bucket-rb"
  
  tags = {
    Name = "terraform-practice-bucket-rb"
  }
}