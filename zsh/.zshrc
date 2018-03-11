# Lines configured by zsh-newuser-install
setopt appendhistory autocd extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Aliases
alias wttr="curl wttr.in"
alias maps='telnet mapscii.me'
alias la="ls -lA --color"
alias tmux="tmux -2"
alias suspendless="systemd-inhibit --what=handle-lid-switch sleep"
alias add-deleted="git status | grep 'deleted' | awk '{ print $2 }' | xargs git add"
alias trans='__trans'
alias def='__def'
__trans() {
	sdcv --color --data-dir /usr/share/stardict/dic/trans/ $* | less -R
}
__def() {
	sdcv --color --data-dir /usr/share/stardict/dic/def/ $* | less -R
}

# Aliases for taskwarrior
alias in='task add +in'
alias tick='__tickle'
alias think='__tickle +1d'
__tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}

#Suffix aliases
alias -s tex=vim
alias -s html=qutebrowser

# Fix gruvbox
source "/usr/share/vim/vimfiles/gruvbox_256palette.sh"

export VISUAL="vim"
export EDITOR="vim"
export BROWSER="GTK_BACKEND=wayland qutebrowser --backend webengine"

#Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit

# Theme
prompt adam2

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -- "^P" up-line-or-beginning-search
bindkey -- "^N" down-line-or-beginning-search
