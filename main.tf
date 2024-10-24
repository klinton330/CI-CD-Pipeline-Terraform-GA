provider "genesyscloud" {}
provider "aws"{
  region="ap-south-1"
  access_key="AKIAXRPWY32AGJMEM5DL"
  secret_jey="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"
}

terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
      version = "1.49.1"
    }
  }

   backend "s3" {
    bucket = "test-terraform-bucket-330"
    key    = "key/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "genesyscloud_architect_user_prompt" "TestTerraformPrompt" {
  description = "Prompt for demo pupose"
  name        = "Demo_Prompt"
  resources {
    tts_string = "This is demo Prompt for testing purposes"
    language   = "en-us"
    text       = "This is demo Prompt for dev purpose"
  }
}

