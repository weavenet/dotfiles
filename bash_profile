if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

#
# iTerm2 Shell Integration
#
# https://www.iterm2.com/documentation-shell-integration.html
#
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
