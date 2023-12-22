terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.20.0"
    }
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.3"
    }
  }
}

provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN
}

variable "CLOUDFLARE_API_TOKEN" {
  type        = string
  description = "Cloudflare API Token"
  sensitive   = true
}

variable "CLOUDFLARE_ZONE_ID" {
  type        = string
  description = "Cloudflare Zone ID"
}

provider "vercel" {
  api_token = var.VERCEL_API_TOKEN
}

variable "VERCEL_API_TOKEN" {
  type        = string
  description = "Vercel Token"
  sensitive   = true
}
