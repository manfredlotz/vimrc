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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

function! IsOnMainframe()
  if stridx($HOST, "stutvs") == 0
    return v:true
  endif

  return v:false
endfunction

if IsOnMainframe()
  set t_RV=
endif

source $HOME/.vim/settings.vimrc
source $HOME/.vim/plug.vimrc
source $HOME/.vim/mappings.vimrc
source $HOME/.vim/look.vimrc



inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

