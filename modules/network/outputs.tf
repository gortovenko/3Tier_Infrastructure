output "aws_vpc_id" {
    value = aws_vpc.three-tier-vpc.id
}

output "aws_vpc_cidr_block" {
    value = aws_vpc.three-tier-vpc.cidr_block
}

output "aws_subnet_pub_1_id" {
    value = aws_subnet.three-tier-pub-sub[0].id
}

output "aws_subnet_pub_2_id" {
    value = aws_subnet.three-tier-pub-sub[1].id
}

output "aws_subnet_pvt_1_id" {
    value = aws_subnet.three-tier-pvt-sub[0].id
}

output "aws_subnet_pvt_2_id" {
    value = aws_subnet.three-tier-pvt-sub[1].id
}

output "aws_subnet_pvt_3_id" {
    value = aws_subnet.three-tier-pvt-sub[2].id
}

output "aws_subnet_pvt_4_id" {
    value = aws_subnet.three-tier-pvt-sub[3].id
}
