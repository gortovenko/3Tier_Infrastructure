#################### Internet Gateway ####################
resource "aws_internet_gateway" "three-tier-igw" {
  vpc_id                                  = aws_vpc.three-tier-vpc.id

  tags = {
    Name                                  = "three-tier-igw"
  }
}

