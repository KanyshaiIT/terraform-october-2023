provider "aws" {
  region = var.region  #var is for variable, variable name is region
}

resource "aws_vpc" "main"  {   
  cidr_block = var.cidr_block
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
}

resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3_cidr
}





