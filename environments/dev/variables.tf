variable "vpc_id" {
  type = string
  description = "The ID of the VPC where the security group will be created"
  default = "vpc-0b44a305f823e27da"
}
variable "subnet_id" {
    description = "The ID of a single subnet"
    type = string
    default = "subnet-0c429f8cd5234e5c6"

}
variable "subnets" {
  description = "List of Subnet IDs in your VPC"
  type = list(string)
  default = ["subnet-0c429f8cd5234e5c6", "subnet-0c60a8424864c8bf2", "subnet-0c6826715d3dc0b8c" ]
}
variable "cluster_name" {
    description = "Name of the EKS cluster"
    type = string
    default = "interswitch-eks-cluster"

}
variable "ingressrules" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8090, 9000, 8081, 2479]
}
