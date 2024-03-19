# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "molten-optics-417606"
  region  = "us-central1"
}
# https://www.terraform.io/language/settings/backends/gcs
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}


gcloud container clusters get-credentials primary --zone us-central1-a --project molten-optics-417606

gcloud projects add-iam-policy-binding molten-optics-417606 \
    --member=kubernetes@molten-optics-417606.iam.gserviceaccount.com \
    --role=roles/container.developer

    gcloud auth activate-service-account remote@molten-optics-417606.iam.gserviceaccount.com --key-file=/home/shehroz/iac-2/credentials.json --project=molten-optics-417606
