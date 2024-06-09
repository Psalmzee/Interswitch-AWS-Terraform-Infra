variable "vpc_id" {
  type = string
  description = "The ID of the VPC where the security group will be created"
}
variable "subnet_id" {
    description = "The ID of a single subnet"
    type = string

}
variable "subnets" {
  description = "List of Subnet IDs in your VPC"
  type = list(string)
}
variable "cluster_name" {
    description = "Name of the EKS cluster"
    type = string

}
variable "ingressrules" {
  type    = list(number)
  default = [22, 80, 443, 8080, 8090, 9000, 8081, 2479]
}
