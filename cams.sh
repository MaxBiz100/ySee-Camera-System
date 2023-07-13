#!/bin/bash
echo INITALIZING......
# Set up variables
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
webcam_image="/var/www/html/security/cam.jpg"
snapshot_folder="/var/www/html/security/snapshots"

# Take a photo every 1 second and save it as cam.jpg
while true
do
echo TAKING PHOTO.......
    fswebcam $webcam_image
    echo CAPTURE COMPLETE
    sleep .1s
done &

# Take a photo every minute and save it to the snapshots folder
while true
do
    fswebcam $snapshot_folder/$current_time.jpg
    sleep 60s
    ./check.sh
done &
