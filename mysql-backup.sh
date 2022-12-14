#!/bin/bash

# MySQL veritabanı kullanıcı adı ve parolası
MYSQL_USERNAME=kullanici_adi
MYSQL_PASSWORD=parola

# Yedeklenecek veritabanı adı
DATABASE_NAME=veritabani_adi

# Yedek dosyasının kaydedileceği dizin
BACKUP_DIR=/var/mysql/backups

# Yedek dosyasının adı
BACKUP_FILE=$BACKUP_DIR/$DATABASE_NAME-`date +%Y%m%d-%H%M%S`.sql

# Yedekleme işlemini başlatıyoruz
mysqldump -u $MYSQL_USERNAME -p$MYSQL_PASSWORD $DATABASE_NAME > $BACKUP_FILE
