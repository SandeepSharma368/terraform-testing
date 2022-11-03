module "gk-sandy-ec2" {
    source = "../../GK-Sandy-testing01"
    ami = var.ami-id
    instance_type = var.ec2_inst_type
   
}