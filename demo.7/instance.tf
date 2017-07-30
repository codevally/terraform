resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"

  tags {
    Name = "terraformtraining.com"
  }
}

output "ip" {
  value = "${aws_instance.web-server.public_ip}"
}

output "dns" {
  value = "${aws_instance.web-server.public_dns}"
}
