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
  description = "testing and training wav purposes with github actions"
  name        = "Test_Terraform_Prompt"
   resources {
    language          = "en-us"
    tts_string =       "This is demo Prompt for testing purpose with enviornment addded"
    text              = "Greeting message"
    filename          = "wav/Greating.wav"
    file_content_hash = filesha256("wav/Greating.wav")
  }
}

