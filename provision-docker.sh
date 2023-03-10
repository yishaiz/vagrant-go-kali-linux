sudo apt-get update
apt-get install -y terminator

apt install -y docker.io
systemctl enable docker --now

usermod -aG docker vagrant

# run, logout and login again
# sudo usermod -aG docker $USER
# sudo apt  install docker-compose -y


# docker run -it --rm -p 80:80 vulnerables/web-dvwa