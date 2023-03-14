# module "s3-resource-mod" {
#   source = "../s3_resource"
#   bucketNames = ["priyanka-bucket1"]
#   aclValue = "private"
#   createBucket = var.createBucketValue
# }

# create iam users using for_each
resource "aws_iam_user" "iam-user" {
  # for_each = var.userList != null ? toset(var.userList) : []
  path = "/"
  name = "Suraj-user"

  tags = {
    Name = "Suraj-user"
    Owner   = "Priyanka"
    Purpose = "Practice"
  }
}

module "ec2-resource-mod" {
  source = "../ec2_resource"
  createInstance = var.createInstanceValue
  instanceType = var.instanceTypeValue
  instanceNames = ["priyanka-instance1", "priyanka-instance2", "priyanka-instance3"]
}