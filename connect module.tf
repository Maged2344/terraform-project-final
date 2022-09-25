module "network" {
  source          = "./network"
  vpc_cidr        = var.vpc_cidr_main
  subnet_public1  = var.subnet_public1_main
  subnet_public2  = var.subnet_public2_main
  subnet_private1 = var.subnet_private1_main
  subnet_private2 = var.subnet_private2_main

}

module "ses" {
  source = "./ses"
}

module "lambda_connect" {
  source = "./lambda"
}