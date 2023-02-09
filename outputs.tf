output "website" {
  value = "http://${aws_instance.tf-docker-ec2.public_dns}"

}