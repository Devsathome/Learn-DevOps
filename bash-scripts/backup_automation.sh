#!/bin/bash
set -e

backup_src="/home/sudeep/devops_week1"
backup_dest="/home/sudeep/backups"
mkdir -p $backup_dest

timestamp=$(date +%F-%H-%M)
tar -czf "$backup_dest/backup-$timestamp.tar.gz" $backup_src

# Keep only last 5 backups
cd $backup_dest
ls -tp | grep -v '/$' | tail -n +6 | xargs -I {} rm -- {}

echo "Backup completed: $backup_dest/backup-$timestamp.tar.gz"
