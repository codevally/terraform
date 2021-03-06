resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.web-server.public_ip} >> public_ips.txt"
  }

  tags {
    Name = "terraformtraining.com"
  }
}
