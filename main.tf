
resource "github_repository" "myrepo" {
  name = var.repo_name
  auto_init = var.auto_init
  visibility = var.visibility
}

resource "github_branch_default" "main" {
  branch = var.branch
  repository = github_repository.myrepo.name
}


resource "github_repository_file" "app-files" {
  for_each = toset(var.files)
  content = file(each.value)
  file = each.value
  repository = github_repository.myrepo.name
  branch = github_branch_default.main.branch
  commit_message =var.commit_message
  overwrite_on_create = var.overwrite_on_create
}

resource "aws_instance" "tf-docker-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  security_groups = var.security_groups
  tags = var.tags

  user_data = file("user_data.sh")

  depends_on = [github_repository.myrepo, github_repository_file.app-files]
}

resource "aws_security_group" "tf-docker-sec-gr-203" {
  name = var.security_group_name
  tags = var.security_group_tags
  ingress {
    from_port = var.from_port1
    protocol = var.protocol1
    to_port = var.to_port1
    cidr_blocks = var.cidr_blocks
  }
  ingress {
    from_port = var.from_port2
    protocol = var.protocol2
    to_port = var.to_port2
    cidr_blocks = var.cidr_blocks
  }
  egress {
    from_port = var.egress_from_port
    protocol = var.egress_protocol
    to_port = var.egress_to_port
    cidr_blocks = var.cidr_blocks
  }
}








