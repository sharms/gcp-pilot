resource "google_storage_bucket" "gcp-pilot-log-bucket" {
  name     = "gcp-pilot-log-bucket"
  location = "${var.region}"
  storage_class = "REGIONAL"
}

resource "google_storage_bucket" "gcp-pilot-bucket" {
  name     = "gcp-pilot-bucket"
  location = "${var.region}"
  storage_class = "REGIONAL"
  logging =  {
    log_bucket = "${google_storage_bucket.gcp-pilot-log-bucket.name}"
  }
}

output "logs_bucket" {
  value = "${google_storage_bucket.gcp-pilot-log-bucket.url}"
  description = "Stores logs from ${google_storage_bucket.gcp-pilot_bucket}"
}

output "pilot_bucket" {
  value = "${google_storage_bucket.gcp-pilot-bucket.url}"
  description = "Example Google Storage bucket"
}
