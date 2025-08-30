provider "aws" {
  region = "us-east-1"

}


module  "ec2_instance"  {

  source        = "./ec2_instance"
  ami_value     = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0cfc173a08924f117"

}
