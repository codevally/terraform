provider "aws" {
  access_key = "AKIAIZIOKSFDYRQZBCFQ"
  secret_key = "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"
  region     = "us-west-2"
}

resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"

  tags {
    Name = "terraformtraining"
  }
}
