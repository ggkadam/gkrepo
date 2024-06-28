locals {
  instance_type = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.small"
  }
 
}
 
resource "aws_instance" "myec2" {
  ami           = "ami-008c09a18ce321b3c"
  instance_type  = "t2.small"
 
 tags = {
   "ENV" = "Prod"
 }
 }
}