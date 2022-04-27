provider "aws" {
  region = var.region
}

resource "aws_db_subnet_group" "subnet" {
  name = var.name
  subnet_ids = var.subnets

  tags = {
    Name = var.name
  }
}