provider "aws" {
  region     = "ap-southeast-2"
  access_key = "AKIA4PJMN3SEYFLHH7AR"
  secret_key = "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"
}
resource "aws_instance" "web" {
  count = 3
  ami           = "ami-024781a6c1dcb2253"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
