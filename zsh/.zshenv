export VISUAL=vim
export EDITOR=vim
export BROWSER=qutebrowser
export TERMINAL=alacritty

typeset -U PATH path
PATH="$HOME/.cargo/bin:$PATH"
export PATH

export KUBECONFIG="$HOME/.kube/config:$HOME/work/ocado/gitlab/kubernetes/overview-docs/files/kubeconfig"
