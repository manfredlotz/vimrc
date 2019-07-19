
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wimstefan/Lightning'



"
" {{{ fzf
"

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>m :FZFMru<CR>

"
" }}} fzf 
"


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
" {{{ coc 
"

" Or install latest release tag
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"
" }}} coq 
"


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

