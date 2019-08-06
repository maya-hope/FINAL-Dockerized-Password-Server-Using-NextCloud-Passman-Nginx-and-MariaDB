# Building a Privately Hosted Password Server
# Configurations For AWS Deployment of a Dockerized NextCloud Application With a MariaDB Database Behind an Nginx Reverse Proxy

###### I completed this project during my time working at an awesome fitness-tech company in Amsterdam! This repository serves as a de-identified record of my work.

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

## AWS

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

