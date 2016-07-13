# .zshrc - github.com/bradcodes

# Set the prompt to something more pleasing
PS1='%F{red}%m %f%b%# '
RPROMPT='%F{pink}%~%f (%!)'

# Boring $PATH business:
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/bin:/usr/local/bin"
eval `dircolors -b $HOME/.dir_colors`

# Navigation
# Enable support for 'z'
#. `brew --prefix`/etc/profile.d/z.sh
alias h="cd ~"
alias up="cd .."

# For updating (common command across all VMs/containers)
#alias update='brew update'
#alias upgrade='brew upgrade'

# apt-get related
alias apt-get="sudo apt-get"

# Docker aliases
alias dm='docker-machine'
alias dps='docker ps'
alias dpsrun='docker ps -l -q'
alias dmls='docker-machine ls'
alias dmimage='docker images'
alias dmdeb='docker run -i -t debian /bin/bash'

# Docker containers
alias dmaui='docker run --rm -h "maui" -t -i maui zsh'
alias dkauai='docker run --rm -h "kauai" -t -i kauai zsh'
alias doahu='docker run --rm -h "oahu" -t -i oahu zsh'
alias dlanai='docker run --rm -h "lanai" -t -i lanai zsh'

# vim-style navigation
bindkey -v
bindkey -M viins ‘jk’ vi-cmd-mode
path+=('/usr/local/bin')
export PATH

# General purpose aliases

# Brew aliases
alias bupdate="brew update"
alias bupgrade="brew upgrade"
alias cask="brew cask"

# Common across all distros/containers/VMs
alias ls="ls --color=auto"
alias cl="clear; ls"
alias psa="ps aux"
alias kk="uname -mrs"
alias clp="clear;ls;pwd"
alias p3="ping -c 3"
alias treed="tree -Cd"
alias tree="tree -C"
alias tweet="rainbowstream"
alias sf="clear; echo; screenfetch; echo"
alias mem='top -l1 | grep PhysMem'

# Editing and sourcing .zshrc
alias zedit="vim ~/.zshrc"
alias zsource="source ~/.zshrc"

# Git aliases
alias g="git"
alias glog="git log"
alias gpretty="git log --pretty=oneline"
alias ggraph="git log --graph --oneline --decorate --all"

# open file in quicklook from cli
# !!! This is still all wonky.  Need to find a better solution.
alias ql="qlmanage -p"

# Move and follow file to new dir:
# Example (from ~) mvf test.txt ~/downloads will move the file
# to ~/downloads and cd to that directory.
function mvf {
  if [[ -d $*[-1] ]]; then
    mv $* && cd $*[-1]
  elif [[ -d ${*[-1]%/*} ]]; then
    mv $* && cd ${*[-1]%/*}
  fi
}
# Copy and follow file:
# Just like the mvf() function but this one only copies.
function cpf {
  if [[ -d $*[-1] ]]; then
    cp $* && cd $*[-1]
  elif [[ -d ${*[-1]%/*} ]]; then
    cp $* && cd ${*[-1]%/*}
  fi
}

# Change to whatever directory the Finder is in
cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

# Use alt+s to insert sudo

insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# Must be last in .zshrc
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
