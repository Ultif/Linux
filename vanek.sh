#!/bin/bash
backup_files="/home/ivanius/lb1/"
dest="/home/ivanius/backup/"
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"
echo "Backing up $backup_files to $dest/$archive_file"
date
tar czf $dest/$archive_file $backup_files
echo "Backup finished"
