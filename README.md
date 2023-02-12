# Dockerizing-a-Bookstore-Web-API-Built-with-Python-Flask-and-MySQL

## Description
The Bookstore Web API Application aims to provide students with hands-on experience in dockerizing an application. It involves creating a bookstore web service using Docker and deploying it as a RESTful web service using Flask. The deployment will take place on an AWS Elastic Compute Cloud (EC2) Instance, facilitated by Dockerfile and Docker Compose, and managed by Terraform.

### Diagram

![diagram](https://user-images.githubusercontent.com/113396342/217881724-917b0e84-69a4-400e-9f23-118d6b4a16d0.png)
#

### Tasks

- Creating a Github repository , branch by Terraform
- Creating a EC2 instance and Security Group by Terraform
- Prepare scripts to build a Python Flask App Image using Dockerfile and Docker Compose
- Deploy your application on AWS Cloud using Terraform to showcase your app within your team
#

As a talented cloud engineer, you have been tasked with deploying a groundbreaking app in the development environment using the power of Docker and Terraform. Here's what you need to do:

- Obtain the app code from your team's GitHub repository.
- Utilize the Dockerfile to create a docker image of the app.
- Deploy the app using docker compose, creating a database service with MySQL and configuring the app service to run on port 80, all within a custom network.
- To ensure the seamless deployment of the app in the development environment, your Terraform config file should include the following:

- The creation of new AWS resources to run the application.
- The utilization of Amazon Linux 2 EC2 Instance as the platform.
- The configuration of the EC2 Instance type as t2.micro.
- The tagging of the EC2 Instance as "Web Server of Bookstore" for easy identification.
- The accessibility of the web application from any location via a web browser.
- The deployment of the application files from the Github repository to the EC2 Instance through a user data script within the Terraform configuration file.
- The provision of the Bookstore Web API URL as an output from Terraform, once all resources have been successfully created.
Get ready to showcase your skills and deploy this innovative app with ease!
#

## Expected Outcome:

### Upon completion of this project, individuals will have gained comprehensive knowledge and experience in the following areas:

- MySQL Database Configuration
- Bash Scripting
- Docker Images
- Docker Compose
- AWS EC2 Service
- AWS Security Group Configuration
- Terraform variables , tfvars file
- Terraform Configuration with AWS
- Git & Github for Version Control System

### With these skills, individuals will be able to:

- Successfully configure a connection to the MySQL database.
- Build a robust and efficient Docker image.
- Configure Docker Compose to run a Python Flask app seamlessly.
- Enhance their bash scripting abilities through the use of the user data section in Terraform to install and set up the web application on the EC2 Instance.
- Confidently configure AWS EC2 Instances and Security Groups.
- Effectively use Terraform files to utilize AWS resources.
- Utilize various Git commands (push, pull, commit, add, etc.) and Github as a powerful version control system.
- Deploy and run the web application on the AWS EC2 instance using the Github repository as the codebase.
- By the end of this project, individuals will be well-equipped with the skills and knowledge needed to dockerize and deploy a web application on AWS.
#

# OUTCOMES 

- Github Repository

![Screenshot 2023-02-09 at 11 26 44 AM](https://user-images.githubusercontent.com/113396342/217884871-9208b44f-6766-4605-b97d-f40c61f4b9ec.png)
#

- EC2 instance

![Screenshot 2023-02-09 at 11 27 09 AM](https://user-images.githubusercontent.com/113396342/217884740-49ee807b-70a7-4d50-9646-131b3a81b7b3.png)
#

- Security Group

![Screenshot 2023-02-09 at 11 28 01 AM](https://user-images.githubusercontent.com/113396342/217884799-80f91be2-8886-4999-9540-1ca4ece3614b.png)
#

## RESULT

![Screenshot 2023-02-09 at 11 25 42 AM](https://user-images.githubusercontent.com/113396342/217884960-d14a4423-a23e-41b7-8db0-4a5f58f14df0.png)


