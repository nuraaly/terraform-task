resource "aws_key_pair" "centos" {
  key_name   = "centos_key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
