#!/bin/bash
Description=rm_dart
After=network.target


 export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:/opt/ros/noetic
 export ROS_MASTER_URI=http://localhost:
roslaunch rm_dart dart.launch

[Service]
ExecStart=/home/rm_ws/src/rm_config/config/dart_camera.sh
WorkingDirectory=/home/rm_ws/src/rm_dart
User=dynamicx
Group=dynamicx
Restart=always
RestartSec=3


