variable region {    #what type of variable we can use
    type = string  #mandatory part
    description = "Provide region"
    default = ""   #what region  by default
}

variable cidr_block {   
    type = string
    description = "Provide cidr block"
    default = "10.0.0.0/16"
}  

variable subnet1_cidr {   
    type = string
    description = "Provide cidr block"
    default = "10.0.1.0/24"
}  

variable subnet2_cidr {   
    type = string
    description = "Provide cidr block"
    default = "10.0.2.0/24"
}  

variable subnet3_cidr {   
    type = string
    description = "Provide cidr block"
    default = "10.0.3.0/24"
}  

variable "ami" {
    type = string
    description = "Ubuntu AMI ID"
    default = "ami-0e5f882be1900e43b"
}

variable "instance_type" {
    type = string
    description = "Instance type"
    default = "t2.micro"  
}

variable "name_tag" {
    type = string
    description = "Name of the EC2 instance"
    default = "group-2"
}

