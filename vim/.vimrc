"#######################################
"#   ____                           _  #
"#  / ___| ___ _ __   ___ _ __ __ _| | #
"# | |  _ / _ \ '_ \ / _ \ '__/ _` | | #
"# | |_| |  __/ | | |  __/ | | (_| | | #
"#  \____|\___|_| |_|\___|_|  \__,_|_| #
"#                                     #
"#######################################

set list
set listchars=tab:▸\ ,trail:·
set scrolloff=8
set sidescrolloff=8
set clipboard=unnamedplus
set t_Co=256
set termguicolors
set number
set relativenumber
set spell
set spelllang=en,ru
set nocompatible
syn on
set path+=** " Fuzzy search (down into subfolders)
set wildmenu

" Tabbulation
set autoindent		" Indent according to previous line.
set expandtab
set tabstop =2		" Show existing tabulations
set shiftwidth=2
"set softtabstop =4	" Tab key indents by 4 spaces.

" ToDo:
" set wildmode=longest:full,full

"#############################################
"#  _  __            __  __                  #
"# | |/ /___ _   _  |  \/  | __ _ _ __  ___  #
"# | ' // _ \ | | | | |\/| |/ _` | '_ \/ __| #
"# | . \  __/ |_| | | |  | | (_| | |_) \__ \ #
"# |_|\_\___|\__, | |_|  |_|\__,_| .__/|___/ #
"#           |___/               |_|         #
"#                                           #
"#############################################

let mapleader = "\<space>"

map gf :edit <cfile><cr>

nmap <leader>x :!xdg-open %<cr><cr>

"#####################################
"#  ____  _             _            #
"# |  _ \| |_   _  __ _(_)_ __  ___  #
"# | |_) | | | | |/ _` | | '_ \/ __| #
"# |  __/| | |_| | (_| | | | | \__ \ #
"# |_|   |_|\__,_|\__, |_|_| |_|___/ #
"#                |___/              #
"#                                   #
"#####################################

autocmd BufRead,BufNewFile ~/.config/vim/plugins/*/*.vim set syntax=vimconfig

source ~/.config/vim/plugins/airline.vim
source ~/.config/vim/plugins/coc.vim
source ~/.config/vim/plugins/nerdtree.vim

"#######################
"#  __  __ _           #
"# |  \/  (_)___  ___  #
"# | |\/| | / __|/ __| #
"# | |  | | \__ \ (__  #
"# |_|  |_|_|___/\___| #
"#                     #
"#######################

" Groovebox theme
colorscheme gruvbox
set background=light

" save cursor position
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Aliases
" Save with root permissions
cnoremap w!! w !sudo tee > /dev/null %

" Enables vim-rust :Rust* commands
filetype plugin on

" spell check highlighting
hi clear SpellBad
hi SpellBad cterm=underline

" ssh config.d/* syntax highlighting
autocmd BufRead,BufNewFile ~/.ssh/config.d/* set syntax=sshconfig
