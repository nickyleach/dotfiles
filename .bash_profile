# Load ~/.custom
# ~/.custom can be used for settings you don’t want to commit
[ -r ~/.custom ] && source ~/.custom

# git customization
source ~/.git-completion.bash
export PS1="\[\033[38m\]\u@\h\[\033[01;34m\] \w\[\033[31m\]\$(__git_ps1)\[\033[37m\]$\[\033[00m\] "

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Homebrew Tweaks
PATH='/usr/local/bin':$PATH
PATH='/usr/local/sbin':$PATH
export PATH

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults
