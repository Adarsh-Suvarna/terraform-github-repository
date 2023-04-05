terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
  owner = "Adarsh-Suvarna"
}