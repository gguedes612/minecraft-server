resource "aws_instance" "server" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [var.security_group_id]
  user_data = "${file("script.sh")}"
}
