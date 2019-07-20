echo "start setup for ubuntu"

apt update
apt install -y git vim curl tmux language-pack-ja-base language-pack-ja

mkdir ~/.vim
cp dotfiles/.gitconfig    ~/
cp dotfiles/.tmux.conf    ~/
cp dotfiles/.vimrc        ~/
cp dotfiles/.bashrc       ~/
cp dotfiles/.bash_profile ~/
cp dotfiles/.editorconfig ~/

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein

git clone https://github.com/waysaku/vim /tmp/vim
mkdir ~/.vim/colors
cp /tmp/vim/colors/dracula.vim ~/.vim/colors/

cp ./git-bashfiles/git-completion.bash ~/
cp ./git-bashfiles/git-prompt.sh       ~/

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source ~/.nvm/nvm.sh && nvm install v10.15.0
source ~/.nvm/nvm.sh && nvm use     v10.15.0

git clone https://github.com/syndbg/goenv.git ~/.goenv
