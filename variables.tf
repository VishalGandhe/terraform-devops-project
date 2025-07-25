variable "aws_instance_type" {
  description = "Type of EC2 instance to create"
  default     = "t2.micro"
    type        = string
  
}

variable "aws_default_root_storage_size" {
  description = "Size of the root block device in GB"
  default     = 10
  type = number
  
}

variable "ec2_ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0d1b5a8c13042c939" # Ubuntu 20.04 LTS
  type        = string
  
}

variable "env" {
  description = "Environment for the EC2 instances"
  default     = "prod"
  type        = string
  
}
