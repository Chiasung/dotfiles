time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

# # Run tmux if exists
# if command -v tmux>/dev/null; then
# 	[ -z $TMUX ] && exec tmux
# else
# 	echo "tmux not installed. Run ./deploy to configure dependencies"
# fi

echo "Updating configuration"
#(cd ~/dotfiles && time_out 3 git pull && time_out 3 git submodule update --init --recursive)
# comment out the following update due to no internet connection ;
(cd ~/dotfiles && git pull origin mac && git submodule update --init --recursive)
source ~/dotfiles/zsh/zshrc.sh

export PATH=/opt/qt/5.7/gcc_64/bin:$PATH
export LD_LIBRARY_PATH=LD_LIBRARY_PATH:/lib:/usr/lib:/usr/local/lib
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:~/catkin_ws/orb_slam2_ws/ORB-SLAM2_ws/Examples/ROS
#source /opt/ros/kinetic/setup.zsh

###########################################
##   USING HPC AS MASTER
#export ROS_MASTER_URI=http://192.168.1.10:11311
#export ROS_IP=192.168.1.198
#export ROS_HOSTNAME=192.168.1.198
###########################################

###########################################
##   USING APOLLO AS MASTER
#export ROS_MASTER_URI=http://172.17.0.1:11311
#export ROS_IP=10.184.11.138
#export ROS_HOSTNAME=10.184.11.182
###########################################

############################################
##  LOCALHOST
#export ROS_MASTER_URI=http://10.184.11.138:11311
#export ROS_IP=10.184.11.138
#export ROS_HOSTNAME=10.184.11.138

############################################
#  LOCALHOST
export ROS_MASTER_URI=http://127.0.0.1:11311
export ROS_IP=127.0.0.1
export ROS_HOSTNAME=127.0.0.1
###########################################
