output "DETAILS" {
  value = "${aws_key_pair.ubuntu.key_name}, ${aws_instance.ubuntu.id}"
}

output "AMI" {
  value = "${aws_instance.ubuntu.ami}"
}

output "AZ" {
  value = "${aws_instance.ubuntu.availability_zone}"
}

output "PublicIP" {
  value = "${aws_instance.ubuntu.public_ip}"
}

output "DNS" {
  value = "${aws_route53_record.www.name}"
}
