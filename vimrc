" neovim related
" ==============
"
" In case of problems
" - run :checkhealth
" - try to recreate by running `nvim -u NORC somefile`.
"   - For `vim` it would be: `vim -u NONE somefile`
"   - For `gvim` it would be: `gvim -U NONE somefile`
"
" Interesting help information
" - :h vim-differences
" - :h nvim-defaults


" If you set the 'encoding' option in your |.vimrc|,
scriptencoding utf-8


if &compatible
	set nocompatible               " Be iMproved
endif


" Required:
filetype off                  " required
filetype plugin indent on
syntax enable

let mapleader = "\<space>"



source $HOME/.vim/plug.vimrc
source $HOME/.vim/filetypes.vimrc
source $HOME/.vim/settings.vimrc
source $HOME/.vim/mappings.vimrc
source $HOME/.vim/look.vimrc
source $HOME/.vim/misc.vimrc

source $HOME/.vim/plugged/colorstepper.vim

"
" in order to prevent gvim from crashing when selecting a large portion of a file of some 7MB
" see also here: https://github.com/vim/vim/issues/1023
set guioptions-=a

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


" there was a problem calling this in `plug.vimrc` so we call it here
call deoplete#custom#var('tabnine', { 'line_limit': 500, 'max_num_results': 20, })
