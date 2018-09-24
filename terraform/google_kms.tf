resource "google_kms_key_ring" "gcp_pilot_key_ring" {
  project  = "${var.project_id}"
  name     = "gcp_pilot_key_ring"
  location = "${var.region}"
}

resource "google_kms_crypto_key" "gcp_pilot_crypto_key" {
  name     = "gcp_pilot_crypto_key"
  key_ring = "${google_kms_key_ring.gcp_pilot_key_ring.id}"
}
