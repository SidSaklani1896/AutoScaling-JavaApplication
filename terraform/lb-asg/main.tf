provider "aws" {
  region = "us-west-1"
}

module "lb-asg" {
  source = "../modules/lb-asg"
  subnets = ["subnet-058a7514ba8adbb07", "subnet-04b1f595ef8c29542", "subnet-0dbcd1ac168414927"]
  ami_id = "ami-1195362017abcdef"
  instance_type ="t2.micro"
  key_name = "Sidtech"
  environment = "dev"
  vpc_id = "vpc-0a5dr4a52d2e20945"
}