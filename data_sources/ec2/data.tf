data "aws_ami" "debian" {
  owners = [ "amazon" ]
  most_recent = true
  name_regex = "RHEL"
}