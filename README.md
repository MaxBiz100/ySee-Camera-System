# ySee Camera System 
This is A very simple CCTV system that runs on linux that uses the users webcam to stream a live video feed that can be watched through a web page if the user has a nginx web server. This is likely to be buggy, and is probably not the most secure CCTV system.

# Requirements
**Hardware**
- PC
- Keyboard
- Monitor
- Webcam
- 4 GB (reccomended) A day is about 100 MB.

**Software**
  
- Linux Ubuntu 24 or higher
- Terminal
- fswebcam
- ffmpeg
- Nginx web server

# Install Guide

1. Make sure you have all of the required software
2. Download the files
3. Put cams.sh and check.sh in the same folder
4. Create a folder called "security" in the www/html folder of the Nginx web server
5. Put view.html in the "security" folder
6. Change all instanses of 0.0.0.0 in view.html to your PC's IP address on your local network.
7. In the command line navigate to tthe folder that cams.sh and check.sh are in
8. Type ./cams.sh once navigated into the directory
9. If the script says INTIALIZING... and then starts giving messages like "Trying to take photo" or "Capturing frame", then it is working.

# User Guide

To view the live video feed, go to your browser on any device on the LAN that your PC is on, then type 0.0.0.0/security/view.html into the web browser, where 0.0.0.0 is your Pc's ip on the LAN. (You can get this from ifconfig) 
You can also review the footage by looking in the "snapshots" directory in the security folder of the web server. 

# Troubleshooting

If you are experencing any issues, try stopping the system by typing "killall cams.sh" into a terminal window. Then restart it by navigating to the directory where cams.sh is, then type "./cams.sh". If the issue is not resolved by then, email x9643344@gmail.com
