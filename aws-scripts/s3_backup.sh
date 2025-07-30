#!/bin/bash

# S3 Backup Script for Mumbai Region (ap-south-1)
# Author: Learning AWS CLI
# Purpose: Create bucket, upload log file, verify upload

echo "=== Starting S3 Backup Process ==="

# Step 1: Set variables
REGION="ap-south-1"  # Mumbai region
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")  # Creates format like 20240731-143052
BUCKET_NAME="my-backup-bucket-${TIMESTAMP}"  # Unique bucket name
LOG_FILE="app.log"

echo "Bucket name will be: $BUCKET_NAME"
echo "Region: $REGION"
echo ""

# Step 2: Create unique S3 bucket
echo "Creating S3 bucket..."
aws s3 mb s3://$BUCKET_NAME --region $REGION

# Check if bucket creation was successful
if [ $? -eq 0 ]; then
    echo "✓ Bucket created successfully!"
else
    echo "✗ Failed to create bucket. Exiting..."
    exit 1
fi

echo ""

# Step 3: Create sample log file
echo "Creating sample log file..."
echo "web server logs..." > $LOG_FILE
echo "$(date): Server started successfully" >> $LOG_FILE
echo "$(date): Processing 100 requests" >> $LOG_FILE
echo "$(date): Database connection established" >> $LOG_FILE

echo "✓ Log file '$LOG_FILE' created with sample data"
echo ""

# Step 4: Copy log file to S3 bucket
echo "Uploading log file to S3..."
aws s3 cp $LOG_FILE s3://$BUCKET_NAME/

# Check if upload was successful
if [ $? -eq 0 ]; then
    echo "✓ File uploaded successfully!"
else
    echo "✗ Failed to upload file"
    exit 1
fi

echo ""

# Step 5: List bucket contents to verify
echo "Listing bucket contents to verify upload..."
aws s3 ls s3://$BUCKET_NAME/

echo ""
echo "=== Backup Process Completed Successfully! ==="
echo ""

# Optional cleanup commands (commented out by default)
echo "--- CLEANUP COMMANDS (Currently commented out) ---"
echo "# To clean up resources later, uncomment and run these:"
echo "# aws s3 rm s3://$BUCKET_NAME/$LOG_FILE"
echo "# aws s3 rb s3://$BUCKET_NAME"
echo "# rm $LOG_FILE"

# Uncomment below lines forautomatic cleanup
# read -p "Do you want to clean up resources now? (y/n): " cleanup
# if [ "$cleanup" = "y" ]; then
#     echo "Cleaning up..."
#     aws s3 rm s3://$BUCKET_NAME/$LOG_FILE
#     aws s3 rb s3://$BUCKET_NAME
#     rm $LOG_FILE
#     echo "✓ Cleanup completed!"
# fi
