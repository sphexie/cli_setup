# cli
# get antigen
curl -L git.io/antigen > .antigen.zsh
# get tmux plugin manager
git clone https://github.antigencom/tmux-plugins/tpm ~/.tmux/plugins/tpm
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
