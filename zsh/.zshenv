export VISUAL=vim
export EDITOR=vim
export BROWSER=qutebrowser
export TERMINAL=alacritty

typeset -U PATH path
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
export PATH
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library/
