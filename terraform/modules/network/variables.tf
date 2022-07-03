variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  description = "cidr block da VPC"
}
variable "subnet_cidr_block" {
  default = "10.0.0.0/24"
  description = "cidr block da Subnet"
}
variable "availability_zone" {
  default = "us-east-2a"
  description = "availability zone onde sera criado os recursos"
}
