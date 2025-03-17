
resource "aws_instance" "example" {
    ami           = "ami-00bb6a80f01f03502" # Replace with your desired AMI ID
    instance_type = "t2.micro"

    tags = {
        Name = "terraform-instance"
    }
}