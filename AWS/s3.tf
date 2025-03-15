resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = "terraform-practice-bucket"
  
  tags = {
    Name = "terraform-practice-bucket"
  }
}