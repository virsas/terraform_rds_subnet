# terraform_rds_subnet

Terraform module to create rds subnet.

## Dependencies

- VPC Subnets: <https://github.com/virsas/terraform_vpc_subnet>

## Terraform example

``` terraform
###################
# RDS subnet group
###################
module "rds_subnet" {
  source  = "git::https://github.com/virsas/terraform_rds_subnet.git?ref=v1.0.0"
  name    = "db-subnet"
  subnets = [ module.vpc_subnet_db_a.id, module.vpc_subnet_db_b.id ]
}
```
