terraform {
  backend "s3" {
    bucket         = "surendra-test-terraform-6879" # change this
    key            = "surya/terraform.tfstate.d"
    region         = "us-east-1"
    encrypt        = true
  }
}
