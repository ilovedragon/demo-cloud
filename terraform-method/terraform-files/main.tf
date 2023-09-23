resource "aws_instance" "Webserver-terraform" {
  ami                    = "ami-06e2b86bab2edf4ee"
  instance_type          = "t2.micro"
  user_data              = file("init-script.sh")
  vpc_security_group_ids = [aws_security_group.web-ssh-sg.id]

  tags = {
    Name = "Hello-World-webserver-tf"
  }
}

resource "aws_security_group" "web-ssh-sg" {
  name = "web-ssh-sg"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "web-ssh-sg"
  }
}
