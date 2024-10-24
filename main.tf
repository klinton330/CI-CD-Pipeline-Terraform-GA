provider "genesyscloud" {}
provider "aws"{}

terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
      version = "1.49.1"
    }
  }

   backend "s3" {
    bucket = "${{var.BUCKET}}"
    key    = "${{var.KEY}}"
    region = "${{var.REGION}}"
  }
}

resource "genesyscloud_architect_user_prompt" "TestTerraformPrompt" {
  description = "testing and training purposes"
  name        = "Demo_Prompt"
  resources {
    tts_string = "This is demo Prompt for testing purpose"
    language   = "en-us"
    text       = "This is demo Prompt testing and training purposes"
  }
}

