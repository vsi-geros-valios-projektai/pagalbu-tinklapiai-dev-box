#!/usr/bin/env bash
cp /vagrant/_install/nginx/aukokdaiktus.dev.conf /etc/nginx/sites-enabled/aukokdaiktus.dev.conf
cp /vagrant/_install/nginx/aukoklaika.dev.conf /etc/nginx/sites-enabled/aukoklaika.dev.conf
cp /vagrant/_install/nginx/admin.aukokdaiktus.dev.conf /etc/nginx/sites-enabled/admin.aukokdaiktus.dev.conf
service nginx restart

rm -f /home/admin.aukokdaiktus.dev/httpdocs/.gitignore
rm -f /home/aukokdaiktus.dev/httpdocs/.gitignore
rm -f /home/aukoklaika.dev/httpdocs/.gitignore

yum -y update

#rm -f /home/aukokdaiktus.dev/httpdocs/.gitignore
#git clone ssh://git@mano.gerasfabrikas.lt/source/aukokdaiktus.lt.git /home/aukokdaiktus.dev/httpdocs

#rm -f /home/aukoklaika.dev/httpdocs/.gitignore
#git clone ssh://git@mano.gerasfabrikas.lt/source/aukoklaika.lt.git /home/aukoklaika.dev/httpdocs

#rm -f /home/admin.aukokdaiktus.dev/httpdocs/.gitignore
#git clone ssh://git@mano.gerasfabrikas.lt/source/admin.aukokdaiktus.lt.git /home/admin.aukokdaiktus.dev/httpdocs

#wget  -O /home/_install/db/dev-backup-latest.sql "http://admin.aukokdaiktus.lt/dev/backup/db/dev-backup-latest.sql"
#mysql --user=pdarbais --password=pdarbais pdarbais < "/home/_install/db/dev-backup-latest.sql"
