output "aws_vpc_id" {
    description             = "VPC ID"
    value                   = aws_vpc.three-tier-vpc.id
}

output "aws_vpc_cidr_block" {
    value                   = aws_vpc.three-tier-vpc.cidr_block
}

output "aws_subnet_pub_ids" {
    value                   = aws_subnet.three-tier-pub-sub[*].id
  
}
output "aws_subnet_pub_1_id" {
    value                   = aws_subnet.three-tier-pub-sub[0].id
}

output "aws_subnet_pub_2_id" {
    value                   = aws_subnet.three-tier-pub-sub[1].id
}

output "aws_subnet_pvt_1_id" {
    value                   = aws_subnet.three-tier-pvt-sub[0].id
}

output "aws_subnet_pvt_2_id" {
    value                   = aws_subnet.three-tier-pvt-sub[1].id
}

output "aws_subnet_pvt_3_id" {
    value                   = aws_subnet.three-tier-pvt-sub[2].id
}

output "aws_subnet_pvt_4_id" {
    value                   = aws_subnet.three-tier-pvt-sub[3].id
}

output "aws_eip_id" {
    value                   = aws_eip.three-tier-nat-eip.id
  
}

output "aws_eip_public_ip" {
    value                   = aws_eip.three-tier-nat-eip.public_ip
  
}

output "aws_nat_id" {
    value                   = aws_nat_gateway.three-tier-natgw.id
}

output "aws_igw_id" {
    value                   = aws_internet_gateway.three-tier-igw.id
}

output "aws_security_group_public_sg_ids" {
    value                   = aws_security_group.public_sg.id
}

output "aws_subnet_prv_ids" {
    value                   = aws_subnet.three-tier-pvt-sub[*].id
  
}

output "aws_security_group_private_sg_ids" {
    value                   = aws_security_group.private_sg.id
  
}