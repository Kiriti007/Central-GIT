terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "tls_private_key" "mykey1" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_instance" "my_instance" {
  ami                    = var.ec2_ami
  instance_type          = var.ec2_instance_type
  key_name               = tls_private_key.mykey1.public_key_openssh
  vpc_security_group_ids = [var.aws_SG_id]
  subnet_id              = var.aws_Subnet_id
  user_data = file("Script_docker.sh") 

  provisioner "file" {
    source      = "http_proxy.conf"
    destination = "/tmp/http_proxy.conf"
  }

}

output "private_ip" {
  value = aws_instance.my_instance.private_ip
}

output "public_key" {
  value = tls_private_key.mykey1.public_key_openssh
}