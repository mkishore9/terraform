variable "ami_id" {
    description = "Ami Value"
    type=string  
    default = "ami-0fd05997b4dff7aac"
}

variable "instance_type_value" {
    description = "Instance value"
    type=string
    default = "t2.micro"
}