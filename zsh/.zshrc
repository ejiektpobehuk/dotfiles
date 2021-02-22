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
alias wttr="__wttr"
alias maps='telnet mapscii.me'
alias dit='__dit'
alias doproxy='__doproxy'
alias mit='__mit'
alias mutt='neomutt'
alias k='kubectl'
alias kg='kubectl get'
alias kgd='kubectl get deployments'
alias kgp='kubectl get pods'
alias kgs='kubectl get svc'
alias kcn='kubectl config set-context --current --namespace'
alias kuc='kubectl config use-context'
alias la="ls -lA --color"
alias task="dstask"
alias t="dstask"
alias tmux="tmux -2"
alias ssproxy='ssh -D 8118 -C -N'
alias suspendless="systemd-inhibit --what=handle-lid-switch sleep"
alias add-deleted="git status | grep 'deleted' | awk '{ print $2 }' | xargs git add"
alias jqp="jq -C | less -R"
alias trans='__trans'
alias def='__def'
__trans() {
	sdcv --color --data-dir /usr/share/stardict/dic/trans/ $* | less -R
}
__def() {
	sdcv --color --data-dir /usr/share/stardict/dic/def/ $* | less -R
}

__dit() {
    if [ -d "$1" ] ; then
	  echo "\e[4;32mRepository:\x1B[0m $1"
	  git -C $*
	else
	  echo "you should specify a directory with git repo as first argument"
	  exit 1
	fi
}

__doproxy() {
	doctl compute droplet create ssh-proxy --wait --image ubuntu-20-04-x64 --size 1gb --region fra1 --ssh-keys 23355311 && ssproxy -oStrictHostKeyChecking=no -oUserKnownHostsFile=/dev/null -i ~/.ssh/do root@`doctl compute droplet list | grep ssh-proxy | awk '{ print $3 }'`
	doctl compute droplet delete -f ssh-proxy
}

__mit() {
    for repo in `ls`
	do
	  echo "\e[4;32mRepository:\x1B[0m $repo"
	  git -C $repo $*
	  echo ''
	done
}

# oui lookup
alias oui='__oui'
__oui() {
	grep $* -i /usr/share/nmap/nmap-mac-prefixes
}

# Show all resources in a namespace
alias k-show-ns='__k-show-ns'
 __k-show-ns() {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    echo "Resource:" $i
    kubectl -n ${1} get --ignore-not-found ${i}
  done
}

__wttr() {
  curl "wttr.in/$*"
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
alias wget-dir='wget -r -np -R "index.html*"'
alias sdfailed='systemctl list-units --state=failed'

#Suffix aliases
alias -s tex=vim
alias -s html=qutebrowser
alias -s png=sxiv
alias -s jpg=sxiv

#Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit

# Theme
eval "$(starship init zsh)"

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

source "$HOME/.config/broot/launcher/bash/br"
source /usr/share/zsh/site-functions/_dstask


eval "$(direnv hook zsh)"
