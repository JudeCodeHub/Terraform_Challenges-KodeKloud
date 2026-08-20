# Generate RSA private key locally
resource "tls_private_key" "devops_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create AWS key pair using the public key
resource "aws_key_pair" "devops_kp" {
  key_name   = "devops-kp" # Name of the key pair
  public_key = tls_private_key.devops_key.public_key_openssh

  tags = {
    Name = "devops-kp"
  }
}

# Save private key locally
resource "local_file" "private_key_pem" {
  content         = tls_private_key.devops_key.private_key_pem
  filename        = "/home/bob/devops-kp.pem"
  file_permission = "0600"
}
