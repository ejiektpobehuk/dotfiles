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
