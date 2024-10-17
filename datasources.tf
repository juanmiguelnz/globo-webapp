##################################################################################
# DATA SOURCES
##################################################################################

data "aws_ssm_parameter" "amzn2_linux" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

data "tfe_outputs" "infrastructure" {
  organization = var.organization
  workspace    = var.workspace
}