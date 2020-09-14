# pruebas de tlz para Santander

# Primero configuremos el Provider
provider "aws" {
  version = "~> 3.0"
  region  = "eu-west-1"
}

# Cargamos y ejecuamos el modulo tlz de mitogroup

module "landing-zone_example_example_landing_zone_organization" {
  source  = "MitocGroup/landing-zone/aws//examples/example_landing_zone_organization"
  version = "0.1.10"
  root_path = path.module

  landing_zone_providers = {
    default = {
      account_id = "453694400647"
      region     = "us-east-1"
    }
  }

  landing_zone_components = {
    landing_zone_organization = "s3://terraform-aws-landing-zone/mycompany/landing_zone_organization/default.tfvars"
  }
}