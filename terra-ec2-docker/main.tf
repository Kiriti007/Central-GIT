terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.5.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "tls_private_key" "rsa" {
  algorithm   = "RSA"
  rsa_bits = 4096
}

# Create or import the AWS key pair 'TFkey'
resource "aws_key_pair" "creator_key" {
  key_name   = "TFkey" # Adjust the key name as needed
  public_key = tls_private_key.rsa.public_key_openssh
}

resource "local_file" "TF-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "TFkey.pem"
}

resource "aws_instance" "my_instance" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = aws_key_pair.creator_key.key_name # Use the created or imported key
  vpc_security_group_ids = [var.aws_SG_id]
  subnet_id              = var.aws_Subnet_id
  user_data              = file("script22.sh")
}

output "server_private_ip" {
  value = aws_instance.my_instance.private_ip
}

output "server_public_ipv4" {
  value = aws_instance.my_instance.public_ip
}

output "server_id" {
  value = aws_instance.my_instance.id
}
