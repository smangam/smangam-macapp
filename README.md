# macapp
Dockerized container to show MAC address details using a REST API

# Prerequisites
Install Docker on your Linux computer

# Installing on Linux

# Step 1: Clone the git repository
Clone the git repostiory smangam/macapp to your linux machine in a directory of your choice.
$ cd /root
$ git clone https://github.com/smangam/macapp.git
The above step will create a directory called macapp
$ ls /root/macapp
[root@e440centos76 macapp]# ls
Dockerfile  files  README.md

# Step 2: Build the Docker image
cd to the git repository directory on your local machine
$ cd /root/macapp
Build a Docker image from the Dockerfile. You can give a name to you image using the -t option, as shown below
$ docker build -t="smangam/macapp" .

The above step would have built a docker image called "smangam/macapp"

# Step 3: Run the Docker image (aka execute the Docker container)
Run the container as follows, passing a MAC address as a parameter
When you run the container, the container takes the MAC address passes as a paramter, and outputs the details about this MAC address.
$ docker run smangam/macapp <mac address>
  
# Contents of the repository
The Docker image use alpine as the base image.
The image has ruby and ruby-json packages installed.
The image has the program macapp.rb
This program is a consumer of the public API provided by macaddress.io. This API takes a MAC address as input, and provides details about the MAC as a JSON output.
The program parses the output, and displays in a user friendly way.

# Security Notes




