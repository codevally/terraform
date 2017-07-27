provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}

resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"

  tags {
    Name = "terraformtraining.com"
  }
}
