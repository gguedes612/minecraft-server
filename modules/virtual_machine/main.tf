resource "aws_instance" "server" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = var.subnet_id
  security_groups = [var.security_group_id]
  key_name        = var.key_name
  user_data       = file("script.sh")

  provisioner "file" {
    
    source      = "./server/"
    destination = "/home/ubuntu"
    
    connection {
      type        = "ssh"
      user        = "ubuntu"
      host        = self.public_ip
      private_key = "${file("./minecraft-server.pem")}"
    }
  }
}
