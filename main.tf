variable "gcp_project" {}

provider "google" {
  project = var.gcp_project 
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_00_adfd55a6d827-26172-13497"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "vic_vpc" {
  name                    = "vic-vpc"
  auto_create_subnetworks = true 
}
