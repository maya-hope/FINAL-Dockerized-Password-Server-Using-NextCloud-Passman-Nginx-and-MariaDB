# Building a Privately Hosted Password Server
# Configurations For AWS Deployment of a Dockerized NextCloud Application With a MariaDB Database Behind an Nginx Reverse Proxy

###### This project was completed in collaboration with Cecilia Combemale as part of my 8 week Software DevOps internship at Virtuagym, a Dutch fintess SaaS company. This repository serves as a de-identified record of my work.

## Project Requirements
The goal of this project was to create and deploy a password server on a custom domain. The basic requirements of the project were as follows:

- The password management application hosted on the server must be open source
- The application must be Dockerized
- The server must be an AWS EC2 instance hosted on AWS ECS
- All source code related to the project must be reviasable and stored in the company repository
- The password server and application must be highly secure

## Repository Contents
This repository consists of the following files:

- README.md: an introduction to the project and explanation of repository contents
- docker-compose.yml: a docker-compose file containing all of the information related to the services needed to build the application, database, and proxy server. Necessary when launching your password server locally, not through AWS.
- nginx.conf: a customized nginx configuration file
- .gitignore: file keeping git from pulling SSL certificates into the repository
- Dockerfile: Necessary in configuring nginx, essentially mounts files from the local machine to the image.

## Choosing a Password Manager: NextCloud and Passman
The password server hosts the NextCloud application, which comes with the Passman plug-in. 
**NextCloud** is a cloud storage service, similar to Google Drive and Dropbox. NextCloud is free and open source, meaning that anyone can install it on their private server. The application's open architecture also gives users full control of their data. 
**Passman** is a web-browser based password management plug-in designed to be compatible with NextCloud. There is also an accompanying Passman Google Chrome extension.

## Why Dockerization?
This project involves Dockerizing the NextCloud application. Docker allows one to containerize their application. Docker container images are packages of software that include everything needed to run an application. At runtime, images become containers. Containers isolate software from its environment, and make it easier and faster to deploy applications.

## AWS: Why and How
This application is deployed and hosted using AWS. The server is an EC2 instance: EC2 provides resizable compute capacity in the cloud, and lets the user define a virtual environment with various features. The Docker container is deployed on ECS, and the images are stored in ECR. The SSL certificates necessary for the nginx server to function are stored in S3.

The following AWS tools are utilized in the project:
- EC2
  - Auto scaling groups
  - Launch Configurations
  - Task definitions
  - Instances
  - Load Balancers
  - Security Groups
  - Elastic IP’s
 - ECS
  - Clusters
  - Task Definitions
 - ECR
  - Repositories
- RDS
- S3

