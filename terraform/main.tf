provider "aws" {
  access_key = "AKIAWLNDQGKL3XFNLLG2"
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
