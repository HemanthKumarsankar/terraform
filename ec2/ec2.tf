resource "aws_security_group" "allow_all_ssh_terraform" {
  name  = "allow_sshh"
  description "allow port number 22 for SSH access"

# usaully we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] # allow for everyone
    ipv6_cidr_blocks = ["::/0"]
  }
}