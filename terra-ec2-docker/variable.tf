variable "aws_region" {
  description = "AWS region where the EC2 instance will be created."
  type        = string
  default     = "us-east-1"
}

variable "aws_SG_id" {
  description = "AWS region security group."
  type        = string
  default     = "sg-0bbb04e1034ed4ae0"
}

variable "aws_Subnet_id" {
  description = "AWS region subnet for frankfurt."
  type        = string
  default     = "subnet-0f503224db15446f6"
}

variable "ec2_ami" {
  description = "ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
  type        = string
  default     = "ami-0dbc3d7bc646e8516" 
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro" 
}

variable "aws_access_key" {
  description = "AWS access key ID."
  type        = string
  default     = "AKIA5XWZ6L2F2JGA33FL" # Replace with your default access key or set via environment variable
}

variable "aws_secret_key" {
  description = "AWS secret access key."
  type        = string
  default     = "rJBAZWXLq0HIJm1LIX39Q7gJrGzxJXSifl83Ry9P" # Replace with your default secret key or set via environment variable
}

###################################################

#variable "ec2_key_name" {
  #description = "The name of the EC2 key pair to associate with the instance."
  #type        = string
  #default     = "terra-test-key.pem" # Update with your desired key name
#}

#variable "ec2_key_path" {
  #description = "The path to the private key file for SSH access to the EC2 instance."
  #type        = string
  #default     = "D:\\Practise_file\\Terra_Projects\\terra-test-key.pem"
#}