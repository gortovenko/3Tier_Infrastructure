#################### Autoscalling Group #################### 

resource "aws_autoscaling_group" "three-tier-web-asg" {
  name                                              = "three-tier-web-asg"
  launch_configuration                              = aws_launch_configuration.three-tier-mysql-lconfig.id
  vpc_zone_identifier                               = var.aws_subnet_prv_ids
  min_size                                          = 2
  max_size                                          = 4
  desired_capacity                                  = 2
}
