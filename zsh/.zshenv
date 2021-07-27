export VISUAL=vim
export EDITOR=vim
export BROWSER=qutebrowser
export TERMINAL=alacritty

typeset -U PATH path
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
export PATH
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library/

source "$HOME/.cargo/env"

LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_ALL="en_US.UTF-8"
