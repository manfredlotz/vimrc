
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" a color scheme
Plug 'wimstefan/Lightning'

""
""{{{

"Plug 'srstevenson/vim-picker'

"nmap <leader>pe <Plug>(PickerEdit)
"nmap <leader>ps <Plug>(PickerSplit)
"nmap <leader>pt <Plug>(PickerTabedit)
"nmap <leader>pv <Plug>(PickerVsplit)
"nmap <leader>pb <Plug>(PickerBuffer)
"nmap <leader>p] <Plug>(PickerTag)
"nmap <leader>pw <Plug>(PickerStag)
"nmap <leader>po <Plug>(PickerBufferTag)
"nmap <leader>ph <Plug>(PickerHelp)

""}}}
""

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


"
"{{{ vim-lastplace
"

Plug 'farmergreg/vim-lastplace'

" By default these settings are active
"   let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
"   let g:lastplace_ignore_buftype = "quickfix,nofile,help"

"
"}}}
"



Plug 'Soares/fish.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mtth/scratch.vim'
Plug 'easymotion/vim-easymotion'

Plug 'jiangmiao/auto-pairs'

Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

Plug 'vim-perl/vim-perl'

"
" {{{ vim-templates
"
Plug 'tibabit/vim-templates'

let g:tmpl_search_paths = ['~/.vim/templates']

"
" }}} vim-templates

"
" {{{ tabnine
"

Plug 'zxqfl/tabnine-vim'

"
" }}}
"


"
" {{{ YouCompleteMe
"

"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

"
" }}}
"
" Alternative:
"   - YouCompleteMe
"   - MUcomplete 

"
" {{{ coc 
"
"Plug 'neoclide/coc.nvim', {'branch': 'release'}



" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

"
" }}} coq 
"


" List ends here. Plugins become visible to Vim after this call.
call plug#end()

