variable "vpc_cidr" {
    description = "vpc cidr"
    type = string
    }

variable "subnet_cidr" {
    description = "Subnet cidr"
    type = list(string)
    }

    variable "subnet_names" {
    description = "Subnet names"
    type = list(string)
    default = [ "PublicSubnet1", "PublicSubnet2" ]
    }