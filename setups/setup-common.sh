echo "##### Install copy dotfiles"
mkdir ~/.vim
cp dotfiles/.gitconfig    ~/
cp dotfiles/.tmux.conf    ~/
cp dotfiles/.vimrc        ~/
cp dotfiles/.bashrc       ~/
cp dotfiles/.bash_profile ~/
cp dotfiles/.editorconfig ~/

echo "##### Install vim package manager (dein)"
curl -sS https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein > /dev/null 2>&1

echo "##### Setup vim environment"
git clone https://github.com/waysaku/vim /tmp/vim > /dev/null 2>&1
mkdir ~/.vim/colors
cp /tmp/vim/colors/dracula.vim         ~/.vim/colors/
cp ./git-bashfiles/git-completion.bash ~/
cp ./git-bashfiles/git-prompt.sh       ~/

echo "##### Install nvm and node"
curl -sS -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash > /dev/null 2>&1
source ~/.nvm/nvm.sh && nvm install v10.15.0 > /dev/null 2>&1
source ~/.nvm/nvm.sh && nvm use     v10.15.0 > /dev/null 2>&1

echo "##### Install goenv and Golang"
git clone https://github.com/syndbg/goenv.git ~/.goenv > /dev/null 2>&1
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
goenv install -s 1.12.7 > /dev/null 2>&1
goenv global  1.12.7    > /dev/null 2>&1
goenv rehash
