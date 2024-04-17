variable "aws_subnet_pvt_3_id" {
    description                     = "ID Private Subnet 3"
}

variable "aws_subnet_pvt_4_id" {
    description                     = "ID Private Subnet 4"
}

variable "db_instance_class" {
    description                     = "Instance Type"
    default                         = "db.t2.micro"
}


variable "aws_security_group_private_sg_ids" {
    description                     = "SG ids"
}
