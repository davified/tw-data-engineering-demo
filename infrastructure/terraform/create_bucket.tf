// Configure the Google Cloud provider
provider "google" {
  credentials = "${file("../secrets/gcp_credentials.json")}"
  project     = "my-gce-project"
  region      = "asia-southeast1"
}

resource "google_storage_bucket" "raw-stock-prices-bucket" {
  name     = "raw-stock-prices-bucket"
  location = "asia-southeast1"
  project = "tw-data-engineering-demo"
  storage_class = "REGIONAL"
}
