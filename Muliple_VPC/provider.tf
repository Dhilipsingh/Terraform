
provider "aws" {
  region = var.region
  #profile = "default"
  access_key = var.access_key
  secret_key = var.secret_key
}
