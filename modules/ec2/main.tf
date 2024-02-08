resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_size
 
  root_block_device {
    volume_size = var.instance_root_device_size
    volume_type = "gp3"
  }
 
  tags = {
    Name        = "server-${var.infra_env}-web"
    Role        = var.infra_role
    Project     = "tf-awesome"
    Environment = var.infra_env
    ManagedBy   = "terraform"
  }
}
 
