output "db_password" {
  value = jsondecode(aws_secretsmanager_secret_version.secret_version.secret_string)
}