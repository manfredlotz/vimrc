
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wimstefan/Lightning'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

Plug 'Soares/fish.vim'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/restore_view.vim'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mtth/scratch.vim'
Plug 'easymotion/vim-easymotion'

Plug 'jiangmiao/auto-pairs'



Plug 'vim-perl/vim-perl'

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

