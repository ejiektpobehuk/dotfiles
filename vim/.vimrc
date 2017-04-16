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
set tabstop =4		" Show existing tabulations
set softtabstop =4	" Tab key indents by 4 spaces.
