Debugging catkin-generated pkg-config files
===========================================

This repo contains some quick tests to help debug
[ros/catkin#694](https://github.com/ros/catkin/issues/694).

## Results

The catkin-generated `*.pc` files are broken from kinetic onwards:

|                  | compiles? | compiles with hack? |
|------------------|:---------:|:-------------------:|
| trusty/indigo    |     ✔     |          ✔          |
| xenial/kinetic   |     ✘     |          ✔          |
| yakkety/lunar    |     ✘     |          ✔          |
| zesty/lunar      |     ✘     |          ✔          |
| fedora23/kinetic |     ✘     |          ✔          |

* "compiles" means whether the `test_project` in this repo compiles and runs with the original `*.pc` files.
* "compiles with hack" means whether the `test_project` compiles and runs after running the following command:

```bash
sudo find /opt/ros/$ROS_DISTRO -name '*.pc' -exec sed -i -e 's/-l://g' {} \;
```

The compilation errors for the "compiles" column are in the `console-output-*.txt` files.

## Reproducing

```bash
ln -s Vagrantfile.trusty Vagrantfile   # or Vagrantfile.xenial, ...
vagrant up
```
