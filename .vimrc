scriptencoding utf-8



"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'

Plug 'tpope/vim-commentary'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wimstefan/Lightning'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'yegappan/mru'
" call dein#add( 'masukomi/vim-markdown-folding' )
Plug 'dag/vim-fish'
Plug 'jlanzarotta/bufexplorer'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'cespare/vim-toml'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()



" Required:
filetype plugin indent on
syntax enable



if !has('nvim')
    filetype off                  " required
    filetype plugin on
    filetype indent on

    syntax on

"   good tips: https://dougblack.io/words/a-good-vimrc.html

    set number
    set relativenumber


    set autoindent                     " copy indent from the previous line
    set autoread                       " notice if a file was changed from the outside
    set autowrite                      " write a modified buffer on each :Next, ...


    " backspace=2 is the same as the following statement
    set backspace=indent,eol,start     " modern backspace behavior
    set belloff=all                    " disable the bell
    set complete-=i                    " don't scan current on included files for completion
    set encoding=utf-8                 " set default encoding
    set expandtab
    set formatoptions=tcqj             " more intuitive autoformatting

    " set foldenable          " enable folding
    " set foldlevelstart=10   " open most folds by default
    " set foldnestmax=10      " 10 nested fold max
    " set foldmethod=indent   " fold based on indent level

    set fsync                          " call fsync() for robust file saving
    set hidden 
    set history=10000
    set hlsearch                       " highlight search results
    set ignorecase                     " ignore case when searching
    set incsearch                      " move cursor as you type when searching
    set shiftwidth=2
    set smartcase   " when searching try to be smart
    set smarttab                       " tab setting aware <tab> key
    set softtabstop=2
    set tabstop=2
    set ttyfast     " indicates that our connection is fast
   
    " set scrolljump=5                " lines to scroll when cursor leaves screen
    " set scrolloff=3                 " minimum lines to keep above and below cursor
    " set scrollopt=ver,jump
    noremap <S-Up> <Up>
    noremap <S-Down> <Down>


    set wildmenu                    " Enable enhanced tab autocomplete.
    set wildignore=*.bak,*.o,*.e,*.pyc,*~ " wildmenu: ignore these extensions
    set wildmode=list:longest,full  " Complete till longest string, then open menu.
    set lazyredraw          " redraw only when we need to.
    set showmatch           " highlight matching [{()}]


    " use system clipboard
    "set clipboard=unnamed
    set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.

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

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines

    if has('gui_running')
        set guifont=Cousine\ Regular\ 11
    endif
endif

" 
" Save a file as root
"
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null'


" The // at the end of the directory name tells Vim to use the absolute path to the file 
" to create the swap file so there aren't collisions between files of the same name from 
" different directories.
"set directory^=~/.vim/tmp//
set noswapfile

set undofile
if !isdirectory($HOME . "/.vim/undodir")
    echo "create"
    call mkdir($HOME . "/.vim/undodir", "p")
endif
set undodir=~/.vim/undodir//        " enable persistent-undo




"let mapleader = '\<SPACE>'
nnoremap <SPACE> <Nop>
map <SPACE> <leader>




"----------------- begin plugins -----------------------------------------------

" " The list of plugins to load
" Plug 'tpope/vim-commentary'
" Plug 'mbbill/undotree'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'wimstefan/Lightning'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'yegappan/mru'
" Plug 'masukomi/vim-markdown-folding'

" Plug 'dag/vim-fish'
" Plug 'jlanzarotta/bufexplorer'

" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'

"----------------- end plugins -------------------------------------------------

"not sure I should set it
"set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Night

" colorscheme delek   " too much of green
colorscheme zellner
" set background=dark " for the dark version
"set background=light " for the light version

"let g:airline_theme = 'solarized'
"let g:airline_theme = 'tomorrow'
let g:airline_theme = 'papercolor'



	" Suggested color names (these are available on most systems):
	"     Red		LightRed	DarkRed
	"     Green	LightGreen	DarkGreen	SeaGreen
	"     Blue	LightBlue	DarkBlue	SlateBlue
	"     Cyan	LightCyan	DarkCyan
	"     Magenta	LightMagenta	DarkMagenta
	"     Yellow	LightYellow	Brown		DarkYellow
	"     Gray	LightGray	DarkGray
	"     Black	White
	"     Orange	Purple		Violet

"----------------- end configure vimwiki ---------------------------------------
"

" let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  

function! SwitchBuffer()
  b#
endfunction

nnoremap <leader><tab>  :call SwitchBuffer()<CR>

" ????? nnoremap <leader>wm resize

nnoremap <F5> :UndotreeToggle<cr>

" want to use update instead of write
cnoreabbrev w update 

function! UpdateQ()
    update
    quit
endfunction

cnoreabbrev wq call UpdateQ()

"
" fish plugin: turn off automatic folding
autocmd FileType fish setlocal foldmethod=manual



"
" http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/


" follow symlinked file
function! FollowSymlink()
  let current_file = expand('%:p')
  " check if file type is a symlink
  if getftype(current_file) == 'link'
    " if it is a symlink resolve to the actual file path
    "   and open the actual file
    let actual_file = resolve(current_file)
    silent! execute 'file ' . actual_file
  end
endfunction


" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction



" follow symlink and set working directory
" autocmd BufRead *
" \ call FollowSymlink() |
" \ call SetProjectRoot()

"­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­
" When editing a file, always jump to the last known ursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­­
if has("auto md")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal! g`\"" |
                \ endif
endif " has("auto md")


" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
" don't use it set autochdir                      " current directory is the same as the file being edited


" 
" moving around
"
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 


au BufWinLeave * mkview
" au BufWinEnter * silent loadview
"autocmd FileType markdown set foldexpr=StackedMarkdownFolds()



