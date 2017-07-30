# Create a new instance of the latest CentOS7 on an
# t2.micro node with an AWS Tag naming it "CentOS"
data "aws_ami" "web-server" {
  most_recent = true

  filter {
    name   = "name"
    values = ["CentOS Linux 7*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"] # AWS Marketplace
}

resource "aws_instance" "web-server" {
  ami           = "${data.aws_ami.web-server.id}"
  instance_type = "t2.micro"

  tags {
    Name = "terraformtraining.com"
  }
}
