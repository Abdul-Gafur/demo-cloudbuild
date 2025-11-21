#!/bin/bash
cd /app/github_salehram_cloudbuild-to-gce
git pull
cp -r * /var/www/html
rm -rf /var/www/html/.git
chown -R www-data:www-data /var/www/html/*