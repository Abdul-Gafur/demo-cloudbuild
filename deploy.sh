#!/bin/bash
# Update system
sudo apt-get update
sudo apt-get upgrade -y

# Install Apache
sudo apt-get install -y apache2

# Enable Apache to start on boot
sudo systemctl enable apache2
sudo systemctl start apache2

# Create deploy user (if not exists)
sudo useradd -m -s /bin/bash deploy 2>/dev/null || true

# Create deploy SSH directory
sudo mkdir -p /home/deploy/.ssh
sudo chmod 700 /home/deploy/.ssh

# Give deploy user sudo permissions for Apache operations
echo "deploy ALL=(ALL) NOPASSWD: /bin/cp, /usr/bin/chown, /bin/systemctl" | sudo tee /etc/sudoers.d/deploy-apache

# Set Apache web root permissions
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Verify Apache is running
sudo systemctl status apache2

echo "Apache setup complete!"