#include <iostream>
#include <std_msgs/Header.h>

int main(int argc, char** argv)
{
  std_msgs::Header msg;
  msg.frame_id = "base_footprint";
  msg.stamp.sec = 123;
  msg.stamp.nsec = 456789000;
  std::cout << "message contents:" << std::endl << msg << std::endl;
  return 0;
}
