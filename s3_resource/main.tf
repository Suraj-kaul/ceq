resource "aws_s3_bucket" "mod-bucket" {
  count = var.createBucket ? length(var.bucketNames) : 0
  bucket   = var.bucketNames[count.index]
  tags = {
    Name    = var.bucketNames[count.index]
    Owner   = "Priyanka"
    Purpose = "Practice"
  }
}

resource "aws_s3_bucket_acl" "mod-bucket-acl" {
  count = length(aws_s3_bucket.mod-bucket)
  bucket = aws_s3_bucket.mod-bucket[count.index].id
  acl    = var.aclValue
}