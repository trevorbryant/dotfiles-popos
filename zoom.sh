#!/bin/bash

# download, install, and clean up Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb -P /home/trevor/Downloads
sudo dpkg -i /home/trevor/Downloads/zoom_amd64.deb
for i in $(ls /home/trevor/Downloads/*zoom*); do rm -f $i; done
exit
