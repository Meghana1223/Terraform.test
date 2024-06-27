terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#configuring the github provider
#provider "github" {
#    token = ""
#}


# AWS Provider

provider "aws" {
  region     = "ap-southeast-1"

 # alias      = "ap-southeast-2" [to create the same instace to other region]
 # access_key = "my-access-key"
 # secret_key = "my-secret-key"
}

# to run the terraform cmd's:- [1.terraform init, 2.terraform plan, 3.terraform apply-- chnages will apply to infra level, 4. terraform validate: syntax error]
