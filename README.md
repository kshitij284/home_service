# Home Service Robot Project

## Overview
This project involves developing a home service robot capable of mapping, localization, navigation, and object interaction using ROS. The robot will autonomously navigate a simulated environment, picking up and delivering virtual objects using markers.

## Project Goals
- Develop ROS packages to support home service functionalities.
- Configure a simulation environment in Gazebo.
- Implement SLAM for mapping and localization.
- Enable autonomous navigation and goal execution.
- Simulate object pickup and drop-off using markers in RViz.

## Prerequisites
Ensure that you have the following installed:
- **ROS (Robot Operating System)** - Noetic or Melodic recommended.
- **Gazebo** - For simulating the robot environment.
- **Navigation stack** - For autonomous path planning.
- **Teleoperation package** - To manually control the robot.

## Installation & Setup
1. Clone this repository:
   ```bash
   git clone https://github.com/kshitij284/home_service_robot.git
   cd home_service_robot
   ```
2. Build the workspace:
   ```bash
   catkin_make
   source devel/setup.bash
   ```
3. Install dependencies:
   ```bash
   sudo apt-get install ros-noetic-navigation ros-noetic-amcl ros-noetic-map-server
   ```

## Running the Project
1. **Launch the simulation environment:**
   ```bash
   roslaunch home_service_robot world.launch
   ```
2. **Run SLAM and manually map the environment:**
   ```bash
   ./test_slam.sh
   ```
3. **Test localization and navigation:**
   ```bash
   ./test_navigation.sh
   ```
4. **Execute pick and place operations:**
   ```bash
   ./pick_objects.sh
   ```
5. **Simulate object pickup and drop-off using markers:**
   ```bash
   ./add_marker.sh
   ```
6. **Run the full home service routine:**
   ```bash
   ./home_service.sh
   ```


## Expected Outcome
- The robot successfully maps the environment and localizes itself.
- Autonomous navigation to goal locations works correctly.
- The robot simulates picking up and dropping off objects.
- Markers in RViz reflect object state changes.

## References
- [ROS Navigation Stack](http://wiki.ros.org/navigation)
- [Gazebo Simulator](http://gazebosim.org/)
- [SLAM in ROS](http://wiki.ros.org/slam_gmapping)

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

