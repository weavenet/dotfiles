#!/bin/bash

set -e

echo "Installing bashdot as '~/bashdot'."
url=https://raw.githubusercontent.com/bashdot/bashdot/4.0.1/bashdot
curl -s $url > ~/bashdot
chmod 755 ~/bashdot

echo "Cloning public dotfiles into '~/dotfiles'."
git clone https://github.com/weavenet/dotfiles ~/dotfiles

echo "Installing default profile."
bash ~/bashdot install dotfiles

echo "Dotfiles installed, run '. ~/.bashrc' to source dotfiles."
