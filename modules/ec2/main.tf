resource "aws_instance" "JenkinsServer" {
  ami           = "ami-0aff93cd2d5b60985"
  instance_type = "t2.micro"
  count         = 2
  user_data = file("${path.module}/install.sh")
  vpc_security_group_ids = [aws_security_group.interswitch-sg]

  tags = {
    Name = "Jenkins-Server"
  }
}
