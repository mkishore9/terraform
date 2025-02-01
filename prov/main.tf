provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  key_name      = "kishore-ansible"
}

/* provisioner "remote-exec" {
  inline = [
    "sudo yum update -y",
    "sudo yum install -y httpd",
    "sudo systemctl start httpd",
  ]

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("~/.ssh/aws_key")
    host        = aws_instance.example.public_ip
  }
}
}
*/
