provider "google" {
  credentials = "${file("~/gcloud-service-key.json")}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}
