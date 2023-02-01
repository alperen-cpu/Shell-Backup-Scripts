#!/bin/bash

# Yedek alınacak hedef. 
backup_files="/home/source/"

# Yedek depolanacak dizin.
backup_dir="/home/Backup_dir"

# Güncel tarih belirle.
date=$(date +%Y-%m-%d_%H-%M-%S)

# Yedek ismini düzelt.
backup_file="$backup_dir/$(basename $backup_files)_$date.tar.gz"

# Durum mesajını bildir.
echo "Yedek alınıyor $backup_files dizinine $backup_file"
date
echo

# Yedek dosyasını sıkıştır.
tar -cpzf $backup_file $backup_dir

# İşlemin bittiğini bildir.
echo
echo "Yedek Tamamlandı: $backup_file"
date

# Yedek deposunu göster.
ls -lh $backup_dir

# 90 günden eski yedekleri sil.
find $backup_dir* -mtime +90 -exec rm {} \;

echo "90 günü geçmiş yedek dosyaları silindi"
