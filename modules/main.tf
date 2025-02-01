
 terraform {
     backend "s3" {
       bucket         = "terrabuck"
       key            = "terraform.tfstate"
       region         = "ap-south-1" # Change to your desired region
       encrypt        = true
       dynamodb_table = "your-dynamodb-table"
     }
   }

resource "aws_instance" "firstresource" {
    ami = var.ami_id
    instance_type = var.instance_type_value
}