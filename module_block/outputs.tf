# output "op-s3-bucket-name" {
#   description = "The name of the bucket: "
#   # we can pass values as before, both are correct.
#   # "${}" this is called interpolation
#   value = "${module.s3-resource-mod.op-bucket-name}"
#   # value = module.s3-resource-mod.op-bucket-name
# }

output "op-ec2-instance-name" {
  description = "The name of the instance: "
  value = "${module.ec2-resource-mod.op-instance-name}"
}