#################### AMI latest ####################

data "aws_ami" "latest_ami" {
  most_recent                                   = true

  filter {
    name                                        = "name"
    values                                      = ["amzn2-ami-hvm-*-x86_64-gp2"]  
  }

  filter {
    name                                        = "architecture"
    values                                      = ["x86_64"]
  }

  filter {
    name                                        = "root-device-type"
    values                                      = ["ebs"]
  }

  owners                                        = ["amazon"]  
}