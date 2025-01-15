variable "sg_id" {
    description = "SG ID for Application LB"
    type = string

}

variable "subnets" {
    description = "Subnets for Application LB"
    type = list(string)

}
variable "vpc_id" {
    description = "VPC_ID for LB" 
    type = string
}

variable "instances" {
    description = "Instance id for Target Group attachmentC_ID for LB" 
    type = list(string)
}