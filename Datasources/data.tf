data "aws_ami" "joindevops" {
    owners           = ["973714476881"]
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    filter {
    name   = "creation date"
    values = ["2026-01-14T00:00:26.000Z"]
  }

  filter {
    name   = "descriptio"
    values = ["Redhat-9-DevOps-Practice"]
  }
}

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

# data "aws_instance" "mongodb" {
#     instance_id = "i-0355f99cd46d41298"
# }

# output "mongodb_info" {
#     value = data.aws_instance.mongodb.public_ip
# }