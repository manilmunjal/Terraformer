variable "vpc_cidr" {
  description = "vpc cidr"
  type        = string
}

variable "subnet_cidr" {
  description = "Subnet cidr"
  type        = list(string)
}