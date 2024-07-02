

//image_id(ami ID) = ami-008c09a18ce321b3c

variable "image_id" {
  type = string
  default = "ami-008c09a18ce321b3c" # ami id-from the console "ami-008c09a18ce321b3c
}

variable "type_of_instance" {
  type    = string
  default = "t3.micro"
}


variable "key_name" {
  type = string 
   default = "Terraform"
  }
  
  variable "server1" {
  type = string
   default = "./scripts/web.sh"
  }
 
  variable "server2" {
  type = string
   default = "./scripts/docker.sh"
  }

  variable "webserver_instnce_tags" {
  type = map(string) #map data type for tags
   default = {
   "Name" = "web server",
   "env" = "dev" }
  }
  
variable "docker_instnce_tags" {
  type = map(string) #map data type for tags
   default = { 
   "Name" = "docker server",
   "env" = "dev"}
  }


 # SG groups 
  variable "Sg_ports" {
   type = list(number)
default = [ 22, 80, 0 ]
}


variable "sg_cidr_block" {
    type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "Sg_tags" {
  type = map(string) #map data type for tags
   default = { 
   "Name" = "docker server",
   "env" = "dev"}
  }
