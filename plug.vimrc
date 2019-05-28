
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wimstefan/Lightning'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

Plug 'Soares/fish.vim'
"Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/restore_view.vim'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mtth/scratch.vim'
Plug 'easymotion/vim-easymotion'
"Plug 'haya14busa/incsearch.vim'

" Plug 'spf13/vim-autoclose'
Plug 'jiangmiao/auto-pairs'

" Plug 'jlanzarotta/bufexplorer'
" Plug 'yegappan/mru'
"Plug 'ctrlpvim/ctrlp.vim'

""
"" -------------------- ncm2 ---------------------------
""
"Plug 'ncm2/ncm2'
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp'

"" NOTE: you need to install completion sources to get completions. Check
"" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'
"Plug 'ncm2/ncm2-racer'



"
" -------------------- deoplete ---------------------------
"
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

