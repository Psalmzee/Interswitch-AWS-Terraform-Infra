variable "vpc_id" {}
variable "subnet_id" {}
variable "subnets" {
  type = list(string)
}
variable "cluster_name" {}
variable "security_group_id" {}