# AWS EC2 Instance Module
/*module "ec2_demo_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 3.0"

  name                   = "my-modules-demo"
  count                  = 1
  ami                    = data.aws_ami.amzlinux.id 
  instance_type          = var.ec2_inst_type
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0c8e675a81bd34e11"] # Get Default VPC Security Group ID and replace
  subnet_id              = "subnet-008b0a0d1c302b578" # Get one public subnet id from default vpc and replace
  user_data              = file("apache-install.sh") 
  
  tags = {
    Name        = "Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }
}

*/

module "ec2_cluster" {
  source = "terraform-aws-modules/ec2-instance/aws"
  version = "3.5.0"
  name                   = "Ec2-cluster"
  count                  = 4
  ami                    = data.aws_ami.amzlinux.id 
  instance_type          = var.ec2_inst_type
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0c8e675a81bd34e11"] # Get Default VPC Security Group ID and replace
  subnet_id              = "subnet-008b0a0d1c302b578" # Get one public subnet id from default vpc and replace
  user_data              = file("apache-install.sh") 
  
  tags = {
    Name        = "Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }

}


