module "network" {
  source = "./modules/network/"

  vpc_cidr_block = "10.0.0.0/16"
  subnet_cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-2a"
}

module "virtual_machine" {
  source = "./modules/virtual_machine/"
  subnet_id = module.network.subnet_id
  security_group_id = module.network.security_group_id
}

module "DNS" {
  source = "./modules/dns/"
  public_ip = module.virtual_machine.public_ip
  dns_name = "minecraft.guilhermeguedes.com.br"
  route53_zone_id = "Z04777961F9FOYBSOT7GQ"

}

output "server_ip" {
  value = module.virtual_machine.public_ip
}