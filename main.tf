provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name        = "terraform-example-ec2-instance"
    Purpose     = "Terraform starter setup for EC2 instance"
    Owner       = "GouravSB"
    Expiry_date = "2025-06-20"
  }
}
