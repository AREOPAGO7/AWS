#!/bin/bash

# Update the system and install necessary dependencies (Nginx)
sudo apt update -y         # Update package list
sudo apt install -y nginx  # Install nginx to serve the React app

# Start nginx if it's not running already
sudo systemctl start nginx
sudo systemctl enable nginx

# Remove the old build folder (if needed)
sudo rm -rf /var/www/html/*

# Copy the new React build to the nginx directory
sudo cp -r /home/ubuntu/AWS/build/* /var/www/html/

# Restart nginx to apply changes
sudo systemctl restart nginx
