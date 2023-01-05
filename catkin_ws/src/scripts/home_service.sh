#!/bin/sh
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find my_robot)/worlds/kshitij.world " &
sleep 5
xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(rospack find my_robot)/maps/map.yaml initial_pose_x:=35 initial_pose_y:=35 initial_pose_a:=4.5 update_min_d:=0.1 update_min_a:=0.2" & 
sleep 5
xterm  -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5
xterm  -e  " rosrun add_markers add_markers" &
sleep 5
xterm  -e  " rosrun pick_objects pick_objects" 

