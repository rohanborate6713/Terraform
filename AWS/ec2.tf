
resource "aws_instance" "example" {

    #meta argument for the resource block used to create multiple instances
    #count = 3   

    #for each create instance with different names
   # for_each = toset(["tf1", "tf2", "tf3"])
    ami           = "ami-00bb6a80f01f03502" # Replace with your desired AMI ID
    instance_type = "t2.micro"
    vpc_security_group_ids = [ aws_security_group.demo-sg.id ]

    tags = {
       Name = "terraform-instance"
       #for foreach meta argument
       # Name = each.key
    }
}

#security group
resource "aws_security_group" "demo-sg" {
    name        = "demo-sg"
    description = "Allow inbound traffic on port 80"
    
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
  
    }

    egress = {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
