variable "ami" {
  default = "ami-0960ab670c8bb45f3"
  description = "Imagem que sera usada na imagem (Ubuntu 20.04 como default)"
}

variable "ip_vm" {
  default = "10.0.0.6"
  description = "IP da maquina virtual"
}

variable "instance_type" {
  default = "t2.micro"
  description = "Tipo da instancia"
}

variable "subnet_id" {
  description = "Subnet id que sera passado pelo modulo network"
}

variable "security_group_id" {
}