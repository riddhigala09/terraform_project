provider "aws" {
  region = "us-east-1"
}

module "vpc_us_east_1" {
  source      = "./modules/vpc"
  region      = "us-east-1"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "vpc_us_east_2" {
  source      = "./modules/vpc"
  region      = "us-east-2"
  vpc_cidr    = "10.1.0.0/16"
  subnet_cidr = "10.1.1.0/24"
}

module "ec2_us_east_1" {
  source        = "./modules/ec2"
  region        = "us-east-1"
  subnet_id     = module.vpc_us_east_1.subnet_id
  instance_type = "t2.small"
  ami_id        = "ami-0eaf7c3456e7b5b68"  # Example AMI ID for us-east-1
}

module "ec2_us_east_2" {
  source        = "./modules/ec2"
  region        = "us-east-2"
  subnet_id     = module.vpc_us_east_2.subnet_id
  instance_type = "t2.small"
  ami_id        = "ami-0edf386e462400a51"  # Example AMI ID for us-east-2
}
