variable "variables_ami" {
  description = "AMI for running t2 micro test Ec2 instance"
  type        = string
  default     = "ami-023c11a32b0207432"
}
variable "variables_instance_size" {
  description = "Instance Size"
  type        = string
  default     = "t2.micro"
}
variable "variables_subnet" {
  description = "Subnet for SAP workload"
  type        = string
  default     = "subnet-0248699db3e59e6a7"
}
variable "environment" {
  description = "enviroment"
  type        = string
  default     = "test"
}
