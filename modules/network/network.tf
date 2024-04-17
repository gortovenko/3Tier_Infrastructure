data "aws_availability_zones" "available" {}


locals {
  availability_zones = data.aws_availability_zones.available.names
}

resource "aws_vpc" "three-tier-vpc" {
  cidr_block                = "10.0.0.0/16"
  enable_dns_hostnames      = true
  enable_dns_support        = true

  tags = {
    Name                    = "three-tier-vpc"
  }
}

# Public Subnets 
resource "aws_subnet" "three-tier-pub-sub" {
  count                     = 2
  vpc_id                    = aws_vpc.three-tier-vpc.id
  cidr_block                = "10.0.${count.index * 4}.0/22"
  availability_zone         = local.availability_zones[count.index % length(local.availability_zones)]
  map_public_ip_on_launch   = true

  tags = {
    Name                    = "public-subnet-${count.index + 1}"
  }
}


# Private Subnets
resource "aws_subnet" "three-tier-pvt-sub" {
  count                     = 4
  vpc_id                    = aws_vpc.three-tier-vpc.id
  cidr_block                = "10.0.${count.index * 4 + 12}.0/22"
  availability_zone         = local.availability_zones[count.index % length(local.availability_zones)]
  map_public_ip_on_launch   = false
  tags = {
    Name                    = "private-subnet-${count.index + 1}"
  }
}