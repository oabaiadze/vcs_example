provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "scalr" {
  ami                    = "ami-2757f631"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-d5206699"
  vpc_security_group_ids = ["sg-0c5100e692e446792"]
  key_name               = "terraform"
}
