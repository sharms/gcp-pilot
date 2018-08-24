provider "google" {
  credentials = "${file("~/gcloud-service-key.json")}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

terraform {
  backend "gcs" {
    credentials = "~/gcloud-service-key.json"
    bucket      = "gcp-pilot-terraform-state"
  }
}
