"
" {----------------------------------------------------------------
"
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

" Get rid of -- INSERT -- as INSERT is already shown in the statusline
set noshowmode


"
" {----------------------------------------------------------------
"
" tabnine: Offers advanced AI based autocompletion

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Give more space for displaying messages.
set cmdheight=2
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c




" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" coc-tabnine: https://github.com/neoclide/coc-tabnine
" Important: coc-tabnine gets installed with:
"     :CocInstall coc-tabnine
" It gets installed into: ~/.config/coc/extensions


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
let g:indentLine_fileTypeExclude = ['markdown']

"
" This is an alternative plugin which also
" could be taken here
"
" Plug 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_guide_size = 1
" let g:indent_guides_color_change_percent = 30
" let g:indent_guides_color_exclude_filetypes = ['markdown']


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
" Offers scratch buffer functionality

Plug 'manfredlotz/scratch.vim'



"
" {----------------------------------------------------------------
"
" File system explorer for the vim editor
" See also here: https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9

Plug 'preservim/nerdtree'

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
" The plugin is all about "surroundings": parentheses, brackets, quotes,
" XML tags, and more. The plugin provides mappings to easily delete,
" change and add such surroundings in pairs.

Plug 'tpope/vim-surround'

"
" {----------------------------------------------------------------
"
" Opens URLs on the current line in your default browser via the OS X open
" command, or another command you specify.
" Requires ruby to be installed

Plug 'henrik/vim-open-url'
" Need to specify the open command as the default `open` is for OS X only
let g:open_url_browser="gnome-open"
" Trigger with <leader>u or :OpenURL.


"
" {----------------------------------------------------------------
"
" Add icons to your plugins

Plug 'ryanoasis/vim-devicons'


"
" {----------------------------------------------------------------
"
" This plugin provides a start screen for Vim and Neovim.

Plug 'mhinz/vim-startify'


" Automatically clear highlight (|:nohlsearch|) after cursor
" moved and some other autocmd event.
Plug 'haya14busa/is.vim'

" Type s and two letters 
Plug 'justinmk/vim-sneak'
let g:sneak#label = 1



" " An always-on highlight for a unique character in every word
" " on a line to help you use f, F and family.
" Plug 'unblevable/quick-scope'
" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END

Plug 'rhysd/clever-f.vim'
let g:clever_f_smart_case = 1




"
" {----------------------------------------------------------------
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()




"
"
" Not sure about the following
"
"


"Plug 'dense-analysis/ale'

" Enable ESLint only for JavaScript.
"let b:ale_linters = ['eslint']



" " vim-which-key is vim port of emacs-which-key that displays available
" " keybindings in popup.
"
" " On-demand lazy load
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" An easymotion alternative
" Not sure I need it but it is a very good alternative
"Plug 'zsugabubus/vim-jumpmotion'
