provider "aws" {
  access_key = "AKIAWLNDQGKL4PYZKS4K"
  secret_key = "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"
  region     = "us-east-1"

}

data "aws_region" "current_region" {}

locals {
  team        = "cbc"
  sap_system  = "trbk"
  server_name = "${var.environment}-ec2-sn"
}

resource "aws_instance" "app_server" {
  ami           = var.variables_ami
  instance_type = var.variables_instance_size
  subnet_id     = var.variables_subnet

  tags = {
    Name   = "${local.team}-${local.sap_system}-${local.server_name}"
    Team   = "${local.team}-${local.sap_system}"
    Region = data.aws_region.current_region.name
}

}
