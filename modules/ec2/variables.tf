variable "ami_id" {
  type = string
  default = "ami-09e6f87a47903347c"
}

variable "instance_type" {
  type = string 
  default = "t2.micro"
}

variable "subnet_id" {
  type = string 
  default = "subnet-09caaf11453fcf182"
}

variable "vpc_id" {
  type = string 
  default = "vpc-078f0207aafc7071b"
}
