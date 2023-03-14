variable "createBucket" {
  type = bool
  description = "Enter true or false to create bucket: "
}

variable "bucketNames" {
  type = list(any)
  description = "Enter S3 Bucket Name: "
}

variable "aclValue" {
  type = string
  description = "Enter acl: "
}