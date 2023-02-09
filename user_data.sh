#! /bin/bash
yum update -y
amazon-linux-extras install docker -y
systemctl start docker
systemctl enable docker
usermod -a -G docker ec2-user
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" \
-o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
mkdir -p /home/ec2-user/bookstore-api
TOKEN="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"
FOLDER="https://$TOKEN@raw.githubusercontent.com/hkaanturgut/bookstore-repo/main/"
curl -s --create-dirs -o "/home/ec2-user/bookstore-api/app.py" -L "$FOLDER"bookstore-api.py
curl -s --create-dirs -o "/home/ec2-user/bookstore-api/requirements.txt" -L "$FOLDER"requirements.txt
curl -s --create-dirs -o "/home/ec2-user/bookstore-api/Dockerfile" -L "$FOLDER"Dockerfile
curl -s --create-dirs -o "/home/ec2-user/bookstore-api/docker-compose.yml" -L "$FOLDER"docker-compose.yml
cd /home/ec2-user/bookstore-api
docker build -t 620bef75a214/bookstoreapi:latest .
docker-compose up -d
          
