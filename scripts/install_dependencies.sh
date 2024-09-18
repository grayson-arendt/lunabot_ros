#!/bin/bash

# Install ROS 2 packages
install_ros_packages() {
    local ros_packages=(
        "ros-humble-rtabmap"
        "ros-humble-rtabmap-ros"
        "ros-humble-rplidar-ros"
        "ros-humble-apriltag-ros"
        "ros-humble-laser-filters"
        "ros-humble-robot-localization"
        "ros-humble-imu-complementary-filter"
        "ros-humble-ros2-control"
        "ros-humble-ros2-controllers"
        "ros-humble-gazebo-ros2-control"
    )
    apt install -y "${ros_packages[@]}"
}

# Install miscellaneous packages
install_misc_packages() {
    sudo add-apt-repository ppa:graysonarendt/sparkcan
    sudo apt update
    sudo apt install sparkcan
}

# Main script
main() {
    install_misc_package
    install_ros_packages
}

main
