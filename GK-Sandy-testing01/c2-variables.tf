# Input Variables

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_inst_type" {
  default = "t2.micro"
}