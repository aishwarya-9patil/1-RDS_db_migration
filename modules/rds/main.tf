# Security group
resource "aws_security_group" "rds_sg" {
  name        = "rds-sg"
  description = "rds-sg"
  vpc_id      =  var.rds_vpc

  tags = {
    Name = "rds-sg"
  }
}

resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  security_group_id = aws_security_group.rds_sg.id
  source_security_group_id = var.ec2_sg
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.rds_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}

# DB Subnet Group
resource "aws_db_subnet_group" "subnet_group" {
  name       = "db_grp"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "db_subnet_group"
  }
}

# DB instance
resource "aws_db_instance" "rds" {
  allocated_storage    = var.allocated_storage
  storage_type         = "gp2"
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  publicly_accessible  = true
  skip_final_snapshot  = true
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name = aws_db_subnet_group.subnet_group.name
}