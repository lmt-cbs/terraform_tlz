# pruebas de tlz para Santander

# Primero configuremos el Provider
provider "aws" {
  version = "~> 3.0"
  region  = "eu-west-1"
}

# Create a VPC
resource "aws_vpc" "vpc_pruebas" {
  cidr_block = "10.0.0.0/16"
}