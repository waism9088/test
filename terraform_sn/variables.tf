variable "variables_ami" {
  description = "AMI for running t2 micro test Ec2 instance"
  type        = string
  default     = "ami-00a336abcc01c8cd9"
}
variable "variables_instance_size" {
  description = "Instance Size"
  type        = string
  default     = "t2.micro"
}
variable "variables_subnet" {
  description = "Subnet for SAP workload"
  type        = string
  default     = "subnet-0ce3b7eae67fb1c5d"
}
variable "environment" {
  description = "enviroment"
  type        = string
  default     = "test"
}
