################# Elastic IP for the NAT Gateway ####################
resource "aws_eip" "three-tier-nat-eip" {
  domain                    = "vpc"

  tags = {
    Name                    = "three-tier-nat-eip"
  }
}

#################### NAT Gateway ####################
resource "aws_nat_gateway" "three-tier-natgw" {
  allocation_id             = aws_eip.three-tier-nat-eip.id
  subnet_id                 = aws_subnet.three-tier-pub-sub[0].id  

  tags = {
    Name                    = "three-tier-natgw"
  }
  depends_on                = [aws_internet_gateway.three-tier-igw]
}