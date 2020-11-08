echo "start setup for MacOS"

echo "##### Install basic packages"
brew update > /dev/null 2>&1
brew install git vim curl tmux reattach-to-user-namespace ricty gh > /dev/null 2>&1
brew tap sanemat/font > /dev/null 2>&1

cp -f /usr/local/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/ && fc-cache -vf > /dev/null 2>&1

source setups/setup-common.sh
echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc

echo "##### Change to bash from zsh"
chsh -s /bin/bash
sudo chsh -s /bin/bash
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bashrc
