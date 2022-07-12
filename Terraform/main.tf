terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("ilkilab08-cred.json")

  project = "ilkilab08"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
