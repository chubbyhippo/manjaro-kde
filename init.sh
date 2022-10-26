#!/bin/sh

pamac update --no-confirm
pamac install vim tmux nvm ttf-jetbrains-mono docker docker-compose noto-fonts-emoji --no-confirm
pamac build google-chrome jetbrains-toolbox --no-confirm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
source /usr/share/nvm/init-nvm.sh

sudo usermod -aG docker $USER
sudo systemctl enable docker.service

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc

reboot
