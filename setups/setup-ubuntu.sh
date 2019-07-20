echo "start setup for Ubuntu"

echo "##### Install basic packages"
apt update > /dev/null 2>&1
apt install -y git vim curl tmux language-pack-ja-base language-pack-ja > /dev/null 2>&1

source setups/setup-common.sh
