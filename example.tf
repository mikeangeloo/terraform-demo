provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

module "ec2_app" {
  source        = "./modules/ec2"
  infra_env     = "prod"
  infra_role    = "app"
  instance_size = "t2.micro"
  instance_ami  = lookup(var.amis, var.region)
}
