# main.tf
# Security group allowing SSH and HTTP
resource "aws_security_group" "nginx_sg" {
  name        = "nginx-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Warning: For learning only! Restrict to your IP in production.
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance with Nginx installed via user_data
resource "aws_instance" "nginx_server" {
  ami           = "ami-0c7217cdde317cfec"  # Ubuntu 22.04 LTS in us-east-1
  instance_type = "t2.micro"               # Free tier eligible
  key_name      = "ris"     # Replace with your AWS key pair name
  security_groups = [aws_security_group.nginx_sg.name]

  # Script to install Nginx on startup
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo echo "<h1>Hello from Terraform!</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "Terraform-Nginx-Server"
  }
}

# Output the public IP address
output "public_ip" {
  value = aws_instance.nginx_server.public_ip
}