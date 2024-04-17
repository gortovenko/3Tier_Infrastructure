#################### Get Secrets from SM #################### 
# Make sure about setup sm with variables before your launch IaC

data "aws_secretsmanager_secret" "db_password" {
  name                          = "DB_DEV_PASSWORD"
}


data "aws_secretsmanager_secret" "db_user" {
  name                          = "DB_DEV_USER"
}

data "aws_secretsmanager_secret_version" "db_password_version" {
  secret_id                     = data.aws_secretsmanager_secret.db_password.id
}

data "aws_secretsmanager_secret_version" "db_user_version" {
  secret_id                     = data.aws_secretsmanager_secret.db_user.id
}
