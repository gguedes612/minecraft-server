
variable "public_ip" {
  description = "IP publico da VM"
}

variable "dns_name" {
  description = "Nome de DNS para ser associador a VM"
}
variable "route53_zone_id" {
  description = "ID da Zone DNS já criada"
}