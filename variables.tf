#Repository
variable "repo_name" {
    type = string
  
}
variable "auto_init" {
    type = bool
  
}
variable "visibility" {
    type = string
  
}

# Branch
variable "branch" {
    type = string
  
}

# Repo Files
variable "files" {
  type = list(string)
}
variable "commit_message" {
    type = string
  
}
variable "overwrite_on_create" {
    type = bool
  
}

#EC2
variable "ami" {
    type = string
  
}
variable "instance_type" {
    type = string
  
}
variable "key_name" {
    type = string
  
}
variable "security_groups" {
    type = list(string)
  
}
variable "tags" {
    type = map(any)
  
}


# Security Group
variable "security_group_name" {
    type = string
  
}
variable "security_group_tags" {
    type = map(any)
  
}
variable "cidr_blocks" {
    type = list(string)
  
}
#ingress1
variable "from_port1" {
    type = number
  
}
variable "protocol1" {
    type = string
  
}
variable "to_port1" {
    type = number
  
}

#ingress2
variable "from_port2" {
    type = number
  
}
variable "protocol2" {
    type = string
  
}
variable "to_port2" {
    type = number
  
}

#Egress 
variable "egress_from_port" {
    type = number
  
}
variable "egress_protocol" {
    type = string
  
}
variable "egress_to_port" {
    type = number
  
}