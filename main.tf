provider "genesyscloud" {}

terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
      version = "1.49.1"
    }
  }
}

resource "genesyscloud_architect_user_prompt" "TestTerraformPrompt" {
  description = "Prompt"
  name        = "Demo_Prompt"
  resources {
    tts_string = "This is demo Prompt for testing purposes"
    language   = "en-us"
    text       = "This is demo Prompt for dev purpose"
  }
}

