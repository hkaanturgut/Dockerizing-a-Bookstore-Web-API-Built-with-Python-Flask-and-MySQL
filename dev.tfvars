#Repository
repo_name = "bookstore-repo"
auto_init= true
visibility= "private"
#Branch
branch = "main"
#Files
files = ["bookstore-api.py", "requirements.txt", "Dockerfile", "docker-compose.yml"]
commit_message = "managed by terraform"
overwrite_on_create = true
#EC2
ami = "ami-0f9fc25dd2506cf6d"
instance_type= "t2.micro"
key_name="kaan-project"
security_groups= ["docker-sec-group-203"]
tags= {
    Name = "Web Server of Bookstore"
  }


# Security Group
security_group_name= "docker-sec-group-203"
security_group_tags= {
    Name = "docker-sec-gr-203"
  }
cidr_blocks=   ["0.0.0.0/0"]

#Ingress1
from_port1= 80  
protocol1= "tcp"
to_port1= 80

#Ingress2
from_port2= 22  
protocol2= "tcp"
to_port2= 22

#Egress
egress_from_port= 0
egress_protocol="-1"
egress_to_port = 0
