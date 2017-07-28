variable "region" {
  default = "us-west-2"
}

variable "profile" {
  description = "AWS credentials profile you want to use"
}

variable "mark_public_key" {
  default = "/home/markb/.ssh/id_rsa.pub"
}

variable "mark_private_key" {
  default = "/home/markb/ssh/id_rsa"
}

variable "webserver_username" {
  default = "centos"
}
