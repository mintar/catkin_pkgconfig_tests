INSTALL_PREFIX=/opt/ros/kinetic
# To find_package() things from CMake, you need your ROS installation on
# your CMAKE_PREFIX_PATH.
export CMAKE_PREFIX_PATH=$INSTALL_PREFIX:$CMAKE_PREFIX_PATH

# To pkg-config things from make, you need your ROS installation on
# your PKG_CONFIG_PATH.
export PKG_CONFIG_PATH=$INSTALL_PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH

# To find headers installed to $INSTALL_PREFIX/include, you need to modify
# CPATH.
export CPATH=$INSTALL_PREFIX/include:$CPATH

# The following line may require modification depending on your Python
# version and your system type (`dist-packages` vs. `site-packages).
export PYTHONPATH=$INSTALL_PREFIX/lib/python2.7/dist-packages:$PYTHONPATH

# Add the shared library location.
export LD_LIBRARY_PATH=$INSTALL_PREFIX/lib:$INSTALL_PREFIX/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

# Extend PATH to include things like roslaunch
export PATH=$INSTALL_PREFIX/bin:$PATH

# We need ROS_MASTER_URI to find the roscore
export ROS_MASTER_URI=http://localhost:11311

# We need ROS_PACKAGE_PATH to point to the installed ROS packages
export ROS_PACKAGE_PATH=$INSTALL_PREFIX/share

