#!/bin/bash

set -e

echo "Installing bashdot as '~/bashdot'."
url=https://raw.githubusercontent.com/bashdot/bashdot/master/bashdot
curl -s $url > ~/bashdot
chmod 755 ~/bashdot

echo "Cloning public dotfiles into '~/dotfiles'."
git clone https://github.com/weavenet/dotfiles ~/dotfiles

echo "Installing default profile."
cd
mkdir ~/work_dir
env WORK_DIR=~/workdir bash ~/bashdot install dotfiles

echo "Dotfiles installed, run '. ~/.bashrc' to source dotfiles."
