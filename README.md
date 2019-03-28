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

1. Update your bashrc by running the below command (this will source rc files for profiles):

    ```sh
    cat >> ~/.bashrc <<EOF
    #
    # This bashrc will source files from any profilerc directories
    # linked into users home.
    #
    # Unique configuration for different profiles should be placed
    # in that profiles respective profilerc directory.
    #
    # For example, default will contain the directory .profilerc_default
    # with any files that should be sourced within it.
    #
    if [ -d ~/.profilerc_* ]; then
      for profilerc in \$(ls -d ~/.profilerc_*/*); do
          echo "Sourcing profilerc file '\$profilerc'."
          source \$profilerc
      done
    fi
    EOF
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
