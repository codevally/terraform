# Key Pair Block
resource "aws_key_pair" "markb" {
  key_name   = "id_rsa"
  public_key = "${file("${var.mark_public_key}")}"
}

# WebServer Block
resource "aws_instance" "web-server" {
  ami           = "ami-0c2aba6c"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.markb.key_name}"

  tags {
    Name = "terraformtraining.com"
  }

  provisioner "file" {
    source      = "deploy_website.sh"
    destination = "/tmp/deploy_website.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/deploy_website.sh",
      "sudo /tmp/deploy_website.sh",
    ]
  }

  connection {
    user        = "${var.webserver_username}"
    private_key = "${file("${var.mark_private_key}")}"
  }
}
