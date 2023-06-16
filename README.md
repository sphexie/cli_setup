# cli
# get antigen
curl -L git.io/antigen > .antigen.zsh
# get tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# get vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# install packages
apt install zsh
apt install batcat
# set password
sudo su -
passwd ubuntu
# set zsh as default
chsh -s $(which zsh)
# set timezone
sudo timedatectl set-timezone Europe/Rome
# git remember credentials
git config --global credential.helper store
# git automatically create local new branch on remote
git config --global --add --bool push.autoSetupRemote true
# allow docker to be used without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
reboot
