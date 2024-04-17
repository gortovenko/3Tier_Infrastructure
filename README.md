## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.three-tier-nat-eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.three-tier-igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.three-tier-natgw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.private-rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public-rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private-rt-assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-rt-assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.private_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.public_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.three-tier-pub-sub](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.three-tier-pvt-sub](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.three-tier-vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_eip_id"></a> [aws\_eip\_id](#output\_aws\_eip\_id) | n/a |
| <a name="output_aws_eip_public_ip"></a> [aws\_eip\_public\_ip](#output\_aws\_eip\_public\_ip) | n/a |
| <a name="output_aws_igw_id"></a> [aws\_igw\_id](#output\_aws\_igw\_id) | n/a |
| <a name="output_aws_nat_id"></a> [aws\_nat\_id](#output\_aws\_nat\_id) | n/a |
| <a name="output_aws_subnet_pub_1_id"></a> [aws\_subnet\_pub\_1\_id](#output\_aws\_subnet\_pub\_1\_id) | n/a |
| <a name="output_aws_subnet_pub_2_id"></a> [aws\_subnet\_pub\_2\_id](#output\_aws\_subnet\_pub\_2\_id) | n/a |
| <a name="output_aws_subnet_pvt_1_id"></a> [aws\_subnet\_pvt\_1\_id](#output\_aws\_subnet\_pvt\_1\_id) | n/a |
| <a name="output_aws_subnet_pvt_2_id"></a> [aws\_subnet\_pvt\_2\_id](#output\_aws\_subnet\_pvt\_2\_id) | n/a |
| <a name="output_aws_subnet_pvt_3_id"></a> [aws\_subnet\_pvt\_3\_id](#output\_aws\_subnet\_pvt\_3\_id) | n/a |
| <a name="output_aws_subnet_pvt_4_id"></a> [aws\_subnet\_pvt\_4\_id](#output\_aws\_subnet\_pvt\_4\_id) | n/a |
| <a name="output_aws_vpc_cidr_block"></a> [aws\_vpc\_cidr\_block](#output\_aws\_vpc\_cidr\_block) | n/a |
| <a name="output_aws_vpc_id"></a> [aws\_vpc\_id](#output\_aws\_vpc\_id) | n/a |
