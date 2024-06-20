output "vpc_us_east_1_id" {
  value = module.vpc_us_east_1.vpc_id
}

output "vpc_us_east_2_id" {
  value = module.vpc_us_east_2.vpc_id
}

output "subnet_us_east_1_id" {
  value = module.vpc_us_east_1.subnet_id
}

output "subnet_us_east_2_id" {
  value = module.vpc_us_east_2.subnet_id
}
