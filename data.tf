data "aws_ami" "joindevops" {
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["973714476881"] # Amazon's official AMIs
}

output "ami_id" {
  value = data.aws_ami.joindevops.id
}
