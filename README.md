# Summary

weavenet's public dotfiles

## Installation Dotfiles Management Framework

1. Install [bashdot](https://github.com/bashdot/bashdot) on your system:

    MacOS Homebrew

    ```sh
    brew tap bashdot/tap
    brew install bashdot
    ```

    Manual Installation

    ```sh
    curl -s https://raw.githubusercontent.com/bashdot/bashdot/3.0.0/bashdot > bashdot
    sudo mv bashdot /usr/local/bin
    sudo chmod a+x /usr/local/bin/bashdot
    ```

1. Clone down this repo

    ```sh
    git clone https://github.com/weavenet/dotfiles dotfiles_weavenet
    ```

1. Install the default profile.

    ```sh
    export WORK_DIR=~/work_dir
    mkdir -p $WORK_DIR
    cd dotfiles_weavenet && bashdot install default
    ```
