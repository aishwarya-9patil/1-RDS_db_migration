variable "ami_id" {
  type = string
  default = "ami-05b10e08d247fb927"
}

variable "instance_type" {
  type = string 
  default = "t2.micro"
}

variable "subnet_id" {
  type = string 
  default = "subnet-023f76c7148cae5f9"
}

variable "vpc_id" {
  type = string 
  default = "vpc-051c79ef4f13b9d1a"
}