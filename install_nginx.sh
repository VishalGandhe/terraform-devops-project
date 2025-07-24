#!bin/bash

# install_nginx.sh
# This script installs Nginx on an Ubuntu server.
sudo apt-get udate
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Check if Nginx is running
echo "<h1>Nginx Installation Complete</h1>" sudo tee /var/www/html/index.html
echo "<p>Welcome to your Nginx server!</p>" >> /var/www/html

