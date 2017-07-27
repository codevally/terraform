provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-west-2"
}

resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"

  tags {
    Name = "terraformtraining"
  }
}
