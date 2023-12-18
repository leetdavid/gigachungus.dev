provider "google" {
  project = "gigachungus-dev"
  region  = "asia"
}

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
resource "google_storage_bucket" "terraform-state" {
  project  = "gigachungus-dev"
  name     = "gigachungus-dev-tfstate-${random_id.bucket_prefix.hex}"
  location = "asia"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}

output "bucket_name" {
  value = google_storage_bucket.terraform-state.name
}
