
resource "aws_instance" "example" {

    #meta argument for the resource block used to create multiple instances
    #count = 3   

    #for each create instance with different names
    for_each = toset(["tf1", "tf2", "tf3"])
    ami           = "ami-00bb6a80f01f03502" # Replace with your desired AMI ID
    instance_type = "t2.micro"
    

    tags = {
       # Name = "terraform-instance"
       #for foreach meta argument
        Name = each.key
    }
}