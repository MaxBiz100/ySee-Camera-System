#!/bin/bash
echo INITALIZING......
#ySee Security. Copyright 2023 ySee.  
# Set up variables
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
webcam_image="/var/www/html/security/cam.jpg"
snapshot_folder="/var/www/html/security/snapshots"

# Create the snapshots folder if it doesn't exist
if [ ! -d "$snapshot_folder" ]; then
  mkdir "$snapshot_folder"
fi

# Take a photo every 1 second and save it as cam.jpg
while true
do
echo TAKING PHOTO.......
    fswebcam $webcam_image
    echo CAPTURE COMPLETE
    sleep .1s
done &



file="/var/www/html/security/cam.jpg"


while true; do
echo SNAP
  # Set the path to the snapshots folder
snapshot_dir="$snapshot_folder"

# Create the snapshots folder if it doesn't already exist
if [ ! -d "$snapshot_dir" ]; then
  mkdir "$snapshot_dir"
fi

# Set the filename using the current time and date
filename="$snapshot_dir/$(date +"%Y-%m-%d_%H-%M-%S").jpg"

# Create the snapshots folder if it doesn't exist
if [ ! -d "$snapshot_folder" ]; then
  mkdir "$snapshot_folder"
fi


# Use fswebcam to take a snapshot and save it with the generated filename
fswebcam "$filename"
  # Check if the number of snapshots is greater than 86400
  count=0
  for file in $snapshot_folder/*.jpg; do
    count=$((count + 1))
  done
  if [ $count -gt 86400 ]; then
    # Delete all of the snapshots
    rm -rf $snapshot_folder
  fi
  sleep 3s
done
