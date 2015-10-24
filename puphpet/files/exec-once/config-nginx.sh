#!/usr/bin/env bash
cp /vagrant/_install/nginx/pagalbadaiktais.dev.conf /etc/nginx/sites-enabled/pagalbadaiktais.dev.conf
cp /vagrant/_install/nginx/pagalbadarbais.dev.conf /etc/nginx/sites-enabled/pagalbadarbais.dev.conf
cp /vagrant/_install/nginx/admin.pagalbadaiktais.dev.conf /etc/nginx/sites-enabled/admin.pagalbadaiktais.dev.conf
service nginx restart

rm -f /home/pagalbadaiktais.dev/httpdocs/.gitignore
git clone https://github.com/vsi-geros-valios-projektai/pagalbadaiktais.lt.git /home/pagalbadaiktais.dev/httpdocs

rm -f /home/pagalbadarbais.dev/httpdocs/.gitignore
git clone https://github.com/vsi-geros-valios-projektai/pagalbadarbais.lt.git /home/pagalbadarbais.dev/httpdocs

rm -f /home/admin.pagalbadaiktais.dev/httpdocs/.gitignore
git clone https://github.com/vsi-geros-valios-projektai/admin.pagalbadaiktais.lt.git /home/admin.pagalbadaiktais.dev/httpdocs

wget  -O /home/_install/db/dev-backup-latest.sql "http://admin.pagalbadaiktais.lt/dev/backup/db/dev-backup-latest.sql"
mysql --user=pdarbais --password=pdarbais pdarbais < "/home/_install/db/dev-backup-latest.sql"
