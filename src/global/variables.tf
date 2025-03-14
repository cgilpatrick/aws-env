variable "environment" {
  description = "The environment being deployed"
  type        = string
}

variable "private_cidr_range" {
  default     = "10.1.0.0/16"
  description = "The CIDR range of the private VPC"
  type        = string
}

variable "region" {
  default     = "eu-west-2"
  description = "The AWS region to deploy to"
  type        = string
}