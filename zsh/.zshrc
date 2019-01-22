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
alias mutt='neomutt'
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

# oui lookup
alias oui='__oui'
__oui() {
	grep $* -i /usr/share/nmap/nmap-mac-prefixes
}

# Aliases for taskwarrior
alias in='task add +in'
alias tick='__tickle'
alias ssproxy='ssh -D 8118 -C -N'
alias think='__tickle +1d'
__tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}
alias wget-dir='wget -r -np -R "index.html*"'

#Suffix aliases
alias -s tex=vim
alias -s html=qutebrowser
alias -s png=sxiv
alias -s jpg=sxiv

export VISUAL="vim"
export EDITOR="vim"
export BROWSER="qutebrowser"
export TERMINAL="alacritty"

#Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit

# Theme
prompt spaceship

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey -- "^P" up-line-or-beginning-search
bindkey -- "^N" down-line-or-beginning-search

# Autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-lovers
# Fuzzy matching of completions for when you mistype them:
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric
# Ignore completion functions for commands you don’t have:
zstyle ':completion:*:functions' ignored-patterns '_*'
# Completing process IDs with menu selection:
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always
# If you end up using a directory as argument, this will remove the trailing slash (usefull in ln)
zstyle ':completion:*' squeeze-slashes true
# cd will never select the parent directory (e.g.: cd ../<TAB>):
zstyle ':completion:*:cd:*' ignore-parents parent pwd
