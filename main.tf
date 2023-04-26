provider "aws" {

  }
  variable "subnet_cidr_block" {
    description = "sunnet cidr block"
    
  }
  variable "avail_zone" {
    
  }
  variable "vpc_cidr_block" {
    description = "vpc cidr block"

    
  }
  resource "aws_vpc" "dev-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      "Name" = "dev"
    }
    
  }
  resource "aws_subnet" "public-sub" {
    vpc_id = aws_vpc.dev-vpc.id  
    cidr_block = var.subnet_cidr_block
    availability_zone = var.avail_zone
    tags = {
      "Name" = "public-dev"
    }

  }
