resource "aws_instance" "JenkinsServer" {
  ami           = "ami-0776c814353b4814d"
  instance_type = "t2.micro"
  count         = 2
  user_data = file("${path.module}/install.sh")
  vpc_security_group_ids = [aws_security_group.interswitch-sg.id]

  tags = {
    Name = "Jenkins-Server"
  }
}
