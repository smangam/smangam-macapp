# macapp
Dockerized container to show MAC address details using a REST API

# Prerequisites
Install Docker on your Linux computer

# Installing on Linux

## Step 1: Clone the git repository
Clone the git repostiory smangam/macapp to your linux machine in a directory of your choice.  

```bash
$ cd /root
$ git clone https://github.com/smangam/macapp.git
```
The above step will create a directory called macapp
```bash
$ ls /root/macapp
[root@e440centos76 macapp]# ls
Dockerfile  files  README.md
```
## Step 2: Build the Docker image
cd to the git repository directory on your local machine  
```bash
$ cd /root/macapp
```
Build a Docker image from the Dockerfile. You can give a name to you image using the -t option, as shown below
```bash
$ docker build -t="smangam/macapp" .
```
The above step would have built a docker image called "smangam/macapp"

## Step 3: Run the Docker image (aka execute the Docker container)
Run the container as follows, passing a MAC address as a parameter  
When you run the container, the container takes the MAC address as a parameter, and outputs the details about this MAC address.
```bash
$ docker run smangam/macapp <mac address>
```
Example    
```bash
[root@e440centos76 macapp]# docker run smangam/macapp 44:38:39:ff:ef:57
MAC Address:     44:38:39:ff:ef:57
OUI:             443839
Company:         Cumulus Networks, Inc
Company Address: 650 Castro Street, suite 120-245 Mountain View  CA  94041 US
Country Code:    US
Block Found:     true
Date Created:    2012-04-08
Date Updated:    2015-09-27
Virtual Machine: Not detected
Applications:    ["Multi-Chassis Link Aggregation (Cumulus Linux)"]
Is Valid:        true
```

# Contents of the repository
The Docker image use alpine as the base image.  
The image has ruby and ruby-json packages installed.  
The image has the program macapp.rb  
This program is a consumer of the public API provided by macaddress.io. This API takes a MAC address as input, and provides details about the MAC as a JSON output.  
The program parses the output, and displays in a user friendly way.  

# Security Notes
This is a demo application. The API Key has been made part of the Dockerfile. This is not a recommended security practice.
This repository will be deleted soon after the demo is completed.  





