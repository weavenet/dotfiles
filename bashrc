# https://support.apple.com/kb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.bash/functions
source ~/.env

source ~/.bash/aliases
source ~/.bash/aws
source ~/.bash/completions
source ~/.bash/editor
source ~/.bash/path
source ~/.bash/prompt
source ~/.bash/profilerc

# Sourceing local configuration for a specific machine, which are not kept in source, last.
source ~/.bash/localrc

# Remove duplicate entries from PATH variables
uniqpath
