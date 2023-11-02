variable "aws_region" {
  description = "AWS region where the EC2 instance will be created."
  type        = string
  default     = "eu-central-1"
}

variable "aws_SG_id" {
  description = "AWS region security group."
  type        = string
  default     = "sg-0c7e7663503816ccc"
}

variable "aws_Subnet_id" {
  description = "AWS region subnet for frankfurt."
  type        = string
  default     = "subnet-00e73b0d2f3f466df"
}

variable "ec2_ami" {
  description = "ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
  type        = string
  default     = "ami-0bfea2bc923c0fd12" 
}

variable "ec2_instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro" 
}

variable "aws_access_key" {
  description = "AWS access key ID."
  type        = string
  default     = "ASIAXFBC2EFTS4MZTEDP" 
}

variable "aws_secret_key" {
  description = "AWS secret access key."
  type        = string
  default     = "ehMTL6AjpCbb7ClI/s/BLLkuh3sfAcKv8okmdnAw" 
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