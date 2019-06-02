# macapp
Dockerized container to show MAC address details using a REST API

# Getting Started
Download and Install Docker.
Clone the git repostiory smangam/macapp to your linux machine
cd to the git repository directory on your local machine
$ cd /root/smangam-macapp
Build the image from the Dockerfile as follows
$ docker build -t="smangam/macapp" .

Run the container as follows, passing a MAC address as a parameter
$ docker run smangam/macapp <mac address>
