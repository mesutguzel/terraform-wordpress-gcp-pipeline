terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.31.0"
    }
  }
  backend "gcs" {
    bucket = "tf-state-mesut"
    prefix = "wordpress"
  }
}

provider "google" {
  project = "terraform-wordpress-384307"
  region  = "us-central1"
}
