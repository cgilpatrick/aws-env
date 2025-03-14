module "global" {
  source = "../modules/global"

  environment        = var.environment
  private_cidr_range = var.private_cidr_range
}