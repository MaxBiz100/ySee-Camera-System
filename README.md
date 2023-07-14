# iSee Camera System 
This is A very simple CCTV system that runs on linux that uses the users webcam to stream a live video feed that can be watched through a web page if the user has a nginx web server. This is likely to be buggy, and is probably not the most secure CCTV system.

# Requirements
**Hardware**
- PC
- Keyboard
- Monitor
- Webcam
- 15 GB free hard drive space (reccomended) 4 G free hard drive space (minimum)

**Software**
  
-Linux Ubuntu 20 or higher
-Terminal
-fswebcam
-Nginx web server

# Install Guide

1. Make sure you have all of the required software
2. Download the files
3. Put cams.sh and check.sh in the same folder
4. Create a folder called "security" in the www/html folder of the Nginx web server
5. Put view.html in the "security" folder
6. Change all instanses of 0.0.0.0 in view.html to your PC's IP address on your local network.
7. In the command line navigate to the file
8. Type ./cams.sh once navigated into the directory
9. If the script says INTIALIZING... and then starts giving messages like "Trying to take photo" or "Capturing frame", then it is working.

#User Guide

bbd
