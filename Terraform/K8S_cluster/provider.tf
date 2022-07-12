# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  credentials = file(var.credentials_file)
  project = var.project
  region  = var.region
  zone    = var.zone
}
