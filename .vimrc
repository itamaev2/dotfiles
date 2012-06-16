source ~/dotfiles/.vimrc.neobundle
source ~/dotfiles/.vimrc.color

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" VimShell
let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/proc.so'

"set runtimepath+=$HOME/.vimfiles

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
