variable "rds_vpc" {
  type = string
  default = "vpc-051c79ef4f13b9d1a"
}

variable "ec2_sg" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
  default = [ "subnet-023f76c7148cae5f9", "subnet-090a0007356f21f30" ]
}

variable "allocated_storage" {
  type = number
}

variable "db_name" {
  type = string
}

variable "engine" {
  type = string
}

variable "engine_version" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}