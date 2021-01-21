provider "aws" {
  region     = "us-east-2"
}

resource "aws_instance" "scalr" {
  ami                    = "ami-03c3a7e4263fd998c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-e29e30ae"
  vpc_security_group_ids = ["sg-0dfeb78f7ec029a4d"]
  key_name               = "terraform"
}
