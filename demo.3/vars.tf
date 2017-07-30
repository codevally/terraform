variable "aws_access_key" {}

variable "aws_secret_key" {}

variable "region" {
  default = "us-west-2"
}

variable "mark_public_key" {
  default = "/home/markb/.ssh/id_rsa.pub"
}

variable "mark_private_key" {
  default = "/home/markb/.ssh/id_rsa"
}

variable "webserver_username" {
  default = "centos"
}
