source ~/.dotfiles/.vimrc.neobundle
source ~/.dotfiles/.vimrc.color
source ~/.dotfiles/.vimrc.unite
source ~/.dotfiles/.vimrc.nerdtree

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

syntax on
set modeline
set modelines=1
set ts=2
set sw=2
set autoindent
set expandtab
set smartindent
set number
set cursorline

augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

nmap <ESC><ESC> :nohlsearch<CR><ESC>

set directory=~/.vim/swp
set backupdir=~/.vim/backup

set notitle


let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
