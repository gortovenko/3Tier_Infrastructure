#################### Module Network ####################
module "network" {
    source                                      = "../3Tier_Infrastructure/modules/network"
    
}


module "tier-1" {
    source                                      = "../3Tier_Infrastructure/modules/1-tier"

    aws_subnet_pub_ids                          = module.network.aws_subnet_pub_ids
    aws_security_group_public_sg_ids            = module.network.aws_security_group_public_sg_ids
    vpc_id                                      = module.network.aws_vpc_id

    depends_on                                  = [ module.network ]

}

module "tier-2" {
    source                                      = "../3Tier_Infrastructure/modules/2-tier"

    aws_subnet_prv_ids                          = module.network.aws_subnet_prv_ids
    aws_security_group_private_sg_ids           = module.network.aws_security_group_private_sg_ids
    vpc_id                                      = module.network.aws_vpc_id

    depends_on                                  = [ module.network ]
}

module "tier-3" {
    source                                      = "../3Tier_Infrastructure/modules/3-tier"

    aws_subnet_pvt_3_id                         = module.network.aws_subnet_pvt_3_id
    aws_subnet_pvt_4_id                         = module.network.aws_subnet_pvt_4_id

    aws_security_group_private_sg_ids           = module.network.aws_security_group_private_sg_ids

    depends_on                                  = [ module.network ]

}