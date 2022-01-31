#!/bin/bash

# install systemd dependencies
sudo apt install python-systemd python3-systemd

# create folders and copy files
sudo mkdir /usr/local/lib/python_cam_webstream
sudo cp ./python_cam_webstream.py /usr/local/lib/python_cam_webstream/
sudo cp ./python_cam_webstream.service /etc/systemd/system

# ownership and permissions
sudo chown root:root /usr/local/lib/python_cam_webstream/python_cam_webstream.py
sudo chmod 644 /usr/local/lib/python_cam_webstream/python_cam_webstream.py
sudo chown root:root /etc/systemd/system/python_cam_webstream.service
sudo chmod 644 /etc/systemd/system/python_cam_webstream.service

# systemd systemctl commands
sudo systemctl daemon-reload
sudo systemctl enable python_cam_webstream
sudo systemctl restart python_cam_webstream
sudo systemctl --property=MainPID show python_cam_webstream
