

" If you set the 'encoding' option in your |.vimrc|,
" `:scriptencoding` must be placed after that.
set encoding=utf-8
scriptencoding utf-8


if &compatible
	set nocompatible               " Be iMproved
endif


" Required:
filetype plugin indent on
syntax enable


   " " set leader key
   "   let g:mapleader="\\"

   " " alias for leader key
   "   nmap <space> \
   "   xmap <space> \


" nnoremap <SPACE> <Nop>
" map <SPACE> <leader>
let mapleader = "\<space>"



source $HOME/.vim/plug.vimrc
source $HOME/.vim/plug_conf.vimrc
source $HOME/.vim/filetypes.vimrc
source $HOME/.vim/settings.vimrc
source $HOME/.vim/mappings.vimrc
source $HOME/.vim/look.vimrc
source $HOME/.vim/misc.vimrc




" The // at the end of the directory name tells Vim to use the absolute path to the file 
" to create the swap file so there aren't collisions between files of the same name from 
" different directories.
"set directory^=~/.vim/tmp//
set noswapfile

set undofile
if !isdirectory($HOME . "/.vim/undodir")
	call mkdir($HOME . "/.vim/undodir", "p")
endif
set undodir=~/.vim/undodir//        " enable persistent-undo

nnoremap <F5> :UndotreeToggle<cr>

