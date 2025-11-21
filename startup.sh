#!/bin/bash
cd /app/github_abdul_cloudbuild_demo
git pull
cp -r * /var/www/html
rm -rf /var/www/html/.git
chown -R www-data:www-data /var/www/html/*