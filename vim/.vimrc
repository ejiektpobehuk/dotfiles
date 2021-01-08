" More colours to the terminal
set t_Co=256

" Global line numeration (only current line with rnu on)
set nu

" Relative line Numeration
set rnu

" Highlight the syntax
syn on

" Spell check
set spell
set spelllang=en,ru

" Basic nvigation even with russian layout
set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

" Bye vi
set nocompatible

" Fuzzy search (down into subfolders)
set path+=**

" Display all matching files when tab complete
set wildmenu

" Make Airline appear before split
set laststatus=2

" Airline powerline fonts
let g:airline_powerline_fonts = 1

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

" Tabbulation
set autoindent		" Indent according to previous line.
set expandtab
set tabstop =4		" Show existing tabulations
set shiftwidth=4
"set softtabstop =4	" Tab key indents by 4 spaces.

" Aliases
" Save with root permissions
cnoremap w!! w !sudo tee > /dev/null %

" Enables vim-rust :Rust* commands
filetype plugin on

" spell check highlighting
hi clear SpellBad
hi SpellBad cterm=underline

" fix gruvbox color
set termguicolors

" Rust racer [https://github.com/racer-rust/vim-racer]
set hidden
let g:racer_cmd = "/usr/bin/racer"

" rusty tags [https://github.com/dan-t/rusty-tags]
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
