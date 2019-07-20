echo "start setup for MacOS"

echo "##### Install basic packages"
brew update > /dev/null 2>&1
brew install git vim curl tmux > /dev/null 2>&1

source setups/setup-common.sh

echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc
