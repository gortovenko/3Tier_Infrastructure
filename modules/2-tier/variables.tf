variable "aws_subnet_prv_ids" {
    description                             = "Data private subnets"
    type                                    = list(string)
}

variable "instance_type" {
    description                             = "Type of instance"
    default                                 = "t2.micro"
    type                                    = string
}

variable "key_name_db" {
    description                             = "Name of key-pair"
    default                                 = "mykey"
    
}

variable "aws_security_group_private_sg_ids" {
    description                             = "ID's SG public subnet"
    
}

variable "vpc_id" {
    description                             = "VPC ID"
    type                                    = string
}

