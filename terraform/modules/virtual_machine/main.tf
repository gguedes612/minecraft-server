
resource "aws_network_interface" "main" {
  subnet_id       = var.subnet_id
  private_ips     = [var.ip_vm]
  security_groups = [var.security_group_id]
}

resource "aws_eip" "main" {
  vpc                       = true
  network_interface         = aws_network_interface.main.id
  associate_with_private_ip = var.ip_vm
}

resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  
  network_interface {
    network_interface_id = aws_network_interface.main.id
    device_index = 0
  }
  user_data = "${file("../scripts/teste.sh")}"
}
