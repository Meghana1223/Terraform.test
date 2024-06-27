#resource "provider_typeresource" "instanec name" { }
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

resource "aws_instance" "server1"{
ami           = "ami-008c09a18ce321b3c" # ami id-from the console 
instance_type = "t3.micro"
key_name      = "Terraform"     #key_name = “key which has to use that key name”.
vpc_security_group_ids = [ aws_security_group.terraform_sg.id ] # referance from the main sg. to create the anothe SG and it assing to Instance if we want to add 1 more SG use "," and add it.
user_data     = file ("./scripts/web.sh") # advanced user data cmd's is stored in the .sh file [web.sh] file (scripts/web.sh) =.sh file location , ./=current directory 

tags = {
     "Name" = "server1"   
     # To create the instance name and tags , need to add the tags.
    }
}
resource "aws_instance" "server2"{
ami           = "ami-008c09a18ce321b3c" # ami id-from the console 
instance_type = "t3.micro"
key_name      = "Terraform"     #key_name = “key which has to use that key name”.
vpc_security_group_ids = [ aws_security_group.terraform_sg.id ] # referance from the main sg. to create the anothe SG and it assing to Instance if we want to add 1 more SG use "," and add it.
user_data     = file ("./scripts/docker.sh") # advanced user data cmd's is stored in the .sh file [web.sh] file (scripts/web.sh) =.sh file location , ./=current directory 

tags = {
     "Name" = "server2"   
     # To create the instance name and tags , need to add the tags.
    }
}


resource "aws_security_group" "terraform_sg" {
  name        = "terraform"
  description = "Allow SSH & HTTP inbound traffic and all outbound traffic"
  //vpc_id      = aws_vpc.main.id

  #allowing the port to the SG :- ssh- 22 & Http- 80[inbound] "ingress".

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "TCP"          
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow SSH port"
  }

  ingress {

    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow HTTP port"
  }
  
  #outbound rule "egress"
   egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
   cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow all ports for outbound "
   }

  tags = {
    Name = "terraform SG"
  }
}



