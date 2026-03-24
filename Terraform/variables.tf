variable "env" {}
variable "region" {}
variable "ami" {}
variable "instance_type" {}

variable "desired_capacity" {}
variable "min_size" {}
variable "max_size" {}

variable "allowed_cidr" {
  type = list(string)
}