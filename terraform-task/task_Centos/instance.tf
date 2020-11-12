resource "aws_instance" "web" {
  ami                         = "ami-02354e95b39ca8dec"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "${aws_key_pair.centos.key_name}"
  availability_zone           = "us-east-1a"

  tags = {
    Name = "Centos6"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-east-1a"
  size              = 100
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdi"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web.id}"
}

resource "aws_iam_instance_profile" "adminrole" {
  name = "admin_role"
  role = "${aws_iam_role.admin_role.name}"
}
