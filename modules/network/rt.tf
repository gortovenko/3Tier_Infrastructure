#################### Route Tables for Public Subnets ####################
resource "aws_route_table" "public-rt" {
  vpc_id                        = aws_vpc.three-tier-vpc.id

  tags = {
    Name                        = "public-route-table"
  }

  route {
    cidr_block                  = "0.0.0.0/0"
    gateway_id                  = aws_internet_gateway.three-tier-igw.id
  }
}

#################### Association of Route Tables for Public Subnets ####################
resource "aws_route_table_association" "public-rt-assoc" {
  count                         = length(aws_subnet.three-tier-pub-sub)
  subnet_id                     = aws_subnet.three-tier-pub-sub[count.index].id
  route_table_id                = aws_route_table.public-rt.id
}

#################### Route Tables for Private Subnets ####################
resource "aws_route_table" "private-rt" {
  vpc_id                        = aws_vpc.three-tier-vpc.id

  tags = {
    Name                        = "private-route-table"
  }

  route {
    cidr_block                  = "0.0.0.0/0"
    nat_gateway_id              = aws_nat_gateway.three-tier-natgw.id
  }
}

#################### Association of Route Tables for Private Subnets ####################
resource "aws_route_table_association" "private-rt-assoc" {
  count                         = length(aws_subnet.three-tier-pvt-sub)
  subnet_id                     = aws_subnet.three-tier-pvt-sub[count.index].id
  route_table_id                = aws_route_table.private-rt.id
}