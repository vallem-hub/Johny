variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "sg_ids" {
  default = ["sg-07a1f83a9787e4c2f"]
}

variable "instance_type" {
  default = "t3.micro"
}

variable "tags" {
  default = {
    Name = "modules-demo"
  }
}