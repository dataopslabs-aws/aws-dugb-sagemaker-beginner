# Make a change according to your VPC ID
variable "sm_vpc_id" {
  default = "vpc-e326b89e"
}

# Make a change according to your Subnet IDs
variable "sm_subnets" {
  default = ["subnet-92602df4","subnet-59343357"]
}

# Make a change according to your Security Groups
variable "sm_subnet_1" {
  default = "subnet-59343357"
}