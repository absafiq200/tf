#! /bin/bash
sudo yum update -y
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Welcome to shafeeq.us from server 2</h1>" > /var/www/html/index.html