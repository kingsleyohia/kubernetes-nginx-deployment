module "vpc" {
  source             = "./modules/"
  vpc_cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones = ["eu-west-2a", "eu-west-2b"]
  environment        = "development"
  domain_name        = "kingsleyohia.com"
}
