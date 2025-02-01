module "ec2" {
    source = "./modules/ec2-instance"
    ami_id = "ami-0fd05997b4dff7aac"
    instance_type_value = "t2.micro"
}

output "public_ip" {
    description = "public ip"
    value = aws_instance.firstresource.public_ip
  
}