variable "rds_vpc" {
  type = string
  default = "vpc-078f0207aafc7071b"
}

variable "ec2_sg" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
  default = [ "subnet-00774a22a4102132e", "subnet-0233085b0ed2df1ba" ]
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
