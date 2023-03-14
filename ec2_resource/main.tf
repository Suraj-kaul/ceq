resource "aws_instance" "mod-Instance" {
  count = var.createInstance ? length(var.instanceNames) : 0
  ami = local.amiValue
  instance_type = var.instanceType
  tags = {
    Name    = var.instanceNames[count.index]
    Owner   = "Priyanka"
    Purpose = "Practice"
  }
}

locals {
  amiValue = "ami-05fa00d4c63e32376"
}