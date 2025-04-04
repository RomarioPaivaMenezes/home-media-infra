# !/bin/bash
# this script will be used in case of server crash down
# this containers for some reason are not started when server reboot

sudo systemctl stop docker.socket
sudo systemctl start docker.socket

docker start pihole
docker start traefik
docker start watchtower
docker start embyserver
