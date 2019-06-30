time_out () { perl -e 'alarm shift; exec @ARGV' "$@"; }

## Run tmux if exists
#if command -v tmux>/dev/null; then
#	[ -z $TMUX ] && exec tmux
#else 
#	echo "tmux not installed. Run ./deploy to configure dependencies"
#fi

echo "Updating configuration"
#(cd ~/dotfiles && time_out 3 git pull && time_out 3 git submodule update --init --recursive)
# comment out the following update due to no internet connection ;
(cd ~/dotfiles && git pull && git submodule update --init --recursive)
source ~/dotfiles/zsh/zshrc.sh

##########################################
#   USING HPC AS MASTER
export ROS_MASTER_URI=http://192.168.1.10:11311
export ROS_IP=192.168.1.198
export ROS_HOSTNAME=192.168.1.198
##########################################



############################################
##  LOCALHOST
#export ROS_MASTER_URI=http://127.0.0.1:11311
#export ROS_IP=127.0.0.1
#export ROS_HOSTNAME=127.0.0.1
############################################
