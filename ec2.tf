resource "aws_instance" "my_instance" {
  ami           = "ami-0fc5d935ebf8bc3bc" # Replace with your desired AMI ID
  count         = 5
  instance_type = "t3.medium" # Replace with your desired instance type

  # where to deploy like sg and subnet ID details and all

  vpc_security_group_ids = ["sg-02105f4034c846517"] # Replace with your Security Group ID

  subnet_id = "subnet-09d6585d0a48fe535" # Replace with your Subnet ID

  tags = {
    Name      = "TerraformUbuntu-${count.index + 1}"
    Terraform = "true"
  }
}