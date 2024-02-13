#! /bin/bash -xe
sudo apt update -y
sudo apt install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo echo "<h1>Hello World, Created by Terraform</h1>" > /var/www/html/index.html