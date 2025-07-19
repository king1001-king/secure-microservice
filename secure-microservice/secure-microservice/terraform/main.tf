provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mongo" {
  ami = "ami-12345678"
  instance_type = "t2.micro"
}

output "mongo_endpoint" {
  value = aws_instance.mongo.public_ip
}
