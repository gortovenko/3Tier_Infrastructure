#################### SG Private Subnet ####################
resource "aws_security_group" "private_sg" {
  name                                = "private-sg"
  description                         = "Allow traffic from public subnets on port 5432"
  vpc_id                              = aws_vpc.three-tier-vpc.id

  
  dynamic "ingress" {
    for_each                          = aws_subnet.three-tier-pub-sub.*.cidr_block
    content {
      description                         = "Allow MySQL"
      from_port                           = 3306
      to_port                             = 3306
      protocol                            = "tcp"
      cidr_blocks                         = [ingress.value]
    }
  }

  egress {
    from_port                           = 0
    to_port                             = 0
    protocol                            = "-1"
    cidr_blocks                         = ["0.0.0.0/0"]
  }


  dynamic "ingress" {
    for_each                          = aws_subnet.three-tier-pub-sub.*.cidr_block

   content {
    description                         = "Allow SSH"
    from_port                           = 22
    to_port                             = 22
    protocol                            = "tcp"
    cidr_blocks                         = [ingress.value]
  }
  }
}

#################### SG Public Subnet ####################
resource "aws_security_group" "public_sg" {
  name                                  = "public-sg"
  description                           = "Allow HTTP and SSH from anywhere"
  vpc_id                                = aws_vpc.three-tier-vpc.id

  ingress {
    description                         = "Allow HTTP"
    from_port                           = 80
    to_port                             = 80
    protocol                            = "tcp"
    cidr_blocks                         = ["0.0.0.0/0"]
  }

  ingress {
    description                         = "Allow SSH"
    from_port                           = 22
    to_port                             = 22
    protocol                            = "tcp"
    cidr_blocks                         = ["0.0.0.0/0"]
  }

  egress {
    from_port                           = 0
    to_port                             = 0
    protocol                            = "-1"
    cidr_blocks                         = ["0.0.0.0/0"]
  }
}
