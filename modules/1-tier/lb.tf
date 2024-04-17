####################  AWS Load Balancer #################### 

resource "aws_lb" "three-tier-web-lb" {
  name                                          = "three-tier-web-lb"
  internal                                      = true
  load_balancer_type                            = "application"
  
  security_groups                               =  [var.aws_security_group_public_sg_ids]
  subnets                                       =  var.aws_subnet_pub_ids

  tags = {
    Environment                                 = "three-tier-web-lb"
  }
}

####################  AWS Load Balancer Target group #################### 

resource "aws_lb_target_group" "three-tier-web-lb-tg" {
  name                                          = "three-tier-web-lb-tg"
  port                                          = 80
  protocol                                      = "HTTP"
  vpc_id                                        = var.vpc_id

  health_check {
    interval                                    = 30
    path                                        = "/"
    port                                        = "traffic-port"
    protocol                                    = "HTTP"
    timeout                                     = 10
    healthy_threshold                           = 3
    unhealthy_threshold                         = 3
  }
}

####################  AWS Load Balancer Listener #################### 
resource "aws_lb_listener" "three-tier-web-lb-listner" {
  load_balancer_arn                             = aws_lb.three-tier-web-lb.arn
  port                                          = "80"
  protocol                                      = "HTTP"
  default_action {
    type                                        = "forward"
    target_group_arn                            = aws_lb_target_group.three-tier-web-lb-tg.arn
  }
}

####################  Register the Instances with the Target group #################### 
resource "aws_autoscaling_attachment" "three-tier-web-asattach" {
  autoscaling_group_name                        = aws_autoscaling_group.three-tier-web-asg.name
  lb_target_group_arn                           = aws_lb_target_group.three-tier-web-lb-tg.arn
  
}