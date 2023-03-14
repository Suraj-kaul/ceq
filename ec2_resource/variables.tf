variable "createInstance" {
  type = bool
  description = "Enter true or false to create instance: "
}

variable "instanceType" {
  type = string
  description = "Enter instance type: "
}

variable "instanceNames" {
  type = list(any)
  description = "Enter instance name: "
}