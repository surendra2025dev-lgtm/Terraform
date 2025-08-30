provider "aws" {
  region = "us-east-1"


}

resource "aws_instance" "test" {
  ami           = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0cfc173a08924f117"
  associate_public_ip_address = false


}

resource "aws_s3_bucket" "s3_bucket" {
   bucket = "surendra-test-terraform-6879"

}
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
