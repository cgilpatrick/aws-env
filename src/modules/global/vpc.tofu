resource "aws_vpc" "private" {
    cidr_block = var.private_cidr_range
}