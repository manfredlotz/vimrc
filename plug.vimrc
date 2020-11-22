
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


"
" {----------------------------------------------------------------
"
" Light and dark color themes for vim

Plug 'NLKNguyen/papercolor-theme'


"
" {----------------------------------------------------------------
"
" A light and configurable statusline/tabline plugin

Plug 'itchyny/lightline.vim'

set laststatus=2


"
" {----------------------------------------------------------------
"
" Offers advanced AI based autocompletion

Plug 'zxqfl/tabnine-vim'


"
" {----------------------------------------------------------------
"
" Provides a bundle of fzf based commands and mappings

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>m :FZFMru<CR>

"nnoremap <leader>m :History<CR>


"
" {----------------------------------------------------------------
"
" Shows trailing whitespace and offers :StripWhitespace
" making whitespace cleaning effortless

Plug 'ntpeters/vim-better-whitespace'

"


"
" {----------------------------------------------------------------
" for commenting stuff out
"

Plug 'tomtom/tcomment_vim'


"
" {----------------------------------------------------------------
"
" Displaying indentation levels

Plug 'Yggdroot/indentLine'


"
" {----------------------------------------------------------------
"

Plug 'godlygeek/tabular'


"
" {----------------------------------------------------------------
"
" Intelligently reopen files where you left off.

Plug 'farmergreg/vim-lastplace'

"
" {----------------------------------------------------------------
"

Plug 'tibabit/vim-templates'
let g:tmpl_search_paths = ['~/.vim/templates']


"
" {----------------------------------------------------------------
"
" A collections of language packs

Plug 'sheerun/vim-polyglot'


"
" {----------------------------------------------------------------
"
" Insert or delete brackets, parens, quotes in pair.

Plug 'jiangmiao/auto-pairs'


"
" {----------------------------------------------------------------
"

Plug 'mbbill/undotree'


"
" {----------------------------------------------------------------
"
" Help read code by showing different levels of parenthesis in
" different colors

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" }


"
" {----------------------------------------------------------------
"

Plug 'manfredlotz/scratch.vim'



Plug 'preservim/nerdtree'
" https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Close if the only remaining window is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>



"
" {----------------------------------------------------------------
"

Plug 'tpope/vim-surround'

Plug 'henrik/vim-open-url'
let g:open_url_browser="xdg-open"



" List ends here. Plugins become visible to Vim after this call.
call plug#end()



"
" {
"


"
" }
"
