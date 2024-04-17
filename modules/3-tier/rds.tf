#################### Subnet Group ####################

resource "aws_db_subnet_group" "three-tier-db-sub-grp" {
  name                                              = "three-tier-db-sub-grp"
  subnet_ids                                        = ["${var.aws_subnet_pvt_3_id}","${var.aws_subnet_pvt_4_id}"]
}


#################### DB Instance ####################
resource "aws_db_instance" "three-tier-db" {
  allocated_storage                                 = 100
  storage_type                                      = "gp3"
  engine                                            = "mysql"
  engine_version                                    = "8.0"
  instance_class                                    = var.db_instance_class
  identifier                                        = "three-tier-db"
  username                                          = data.aws_secretsmanager_secret_version.db_user_version.secret_string
  password                                          = data.aws_secretsmanager_secret_version.db_password_version.secret_string
  parameter_group_name                              = "default.mysql8.0"
  db_subnet_group_name                              = aws_db_subnet_group.three-tier-db-sub-grp.name
  vpc_security_group_ids                            = ["${var.aws_security_group_private_sg_ids}"]
  multi_az                                          = true
  skip_final_snapshot                               = true
  publicly_accessible                               = false

  lifecycle {
    prevent_destroy                                 = true
    ignore_changes                                  = all
  }
}