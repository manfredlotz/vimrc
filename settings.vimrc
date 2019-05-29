

" if !has('nvim')
" end

filetype off                  " required
filetype plugin on
filetype indent on

syntax on

set autoindent                     " copy indent from the previous line
set autoread                       " notice if a file was changed from the outside
" backspace=2 is the same as the following statement
set backspace=indent,eol,start     " modern backspace behavior
set belloff=all                    " disable the bell
set complete-=i                    " don't scan current on included files for completion
set formatoptions=tcqj             " more intuitive autoformatting
set history=10000


"   good tips: https://dougblack.io/words/a-good-vimrc.html



set hlsearch                       " highlight search results



" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
" set foldnestmax=10      " 10 nested fold max
" set foldmethod=indent   " fold based on indent level
" set foldmethod=manual

let g:vim_markdown_folding_disabled = 1

set incsearch                      " move cursor as you type when searching
set smarttab                       " tab setting aware <tab> key
set shiftwidth=2
set softtabstop=2
set tabstop=2
set ttyfast     " indicates that our connection is fast

set wildmenu                    " Enable enhanced tab autocomplete.

" colemak no special actions defined currently 
" noremap h <NOP>
" noremap j <NOP>
"    set langmap=li
" noremap k <NOP>
" noremap l <NOP>

" Be smart when using tabs ;)
set smarttab


" Linebreak on 100 characters
set lbr
set tw=100

set wrap "Wrap lines

set fsync                          " call fsync() for robust file saving

" use system clipboard
set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set ignorecase                     " ignore case when searching
set hidden 
set smartcase   " when searching try to be smart
set showmatch           " highlight matching [{()}]
set lazyredraw          " redraw only when we need to.
set autowrite                      " write a modified buffer on each :Next, ...
set number
set relativenumber

set wildignore=*.bak,*.o,*.e,*.pyc,*~ " wildmenu: ignore these extensions
set wildmode=list:longest,full  " Complete till longest string, then open menu.

set smartindent


" set scrolljump=5                " lines to scroll when cursor leaves screen
" set scrolloff=3                 " minimum lines to keep above and below cursor
" set scrollopt=ver,jump


