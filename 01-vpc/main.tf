module "vpc" {
  source = "git::https://github.com/thesureshvadde/05-terraform_aws_vpc_advanced-module.git"
  vpc_cidr = var.vpc_cidr
  project_name = var.project_name
  common_tags = var.common_tags
  env = var.env

  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  database_subnet_cidr = var.database_subnet_cidr

  is_peering_required = true
  requestor_vpc_id = data.aws_vpc.default.id
  default_route_id = data.aws_vpc.default.main_route_table_id
  default_vpc_cidr = data.aws_vpc.default.cidr_block
}