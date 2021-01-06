

if !has('nvim')
	set ttyfast     " indicates that our connection is fast
end

set hidden
set signcolumn=yes
set autoindent                     " copy indent from the previous line
set autoread                       " notice if a file was changed from the outside
" backspace=2 is the same as the following statement
set backspace=indent,eol,start     " modern backspace behavior
set belloff=all                    " disable the bell
set complete-=i                    " don't scan current on included files for completion
set formatoptions=tcqj             " more intuitive autoformatting
set history=500

set updatetime=100

"   good tips: https://dougblack.io/words/a-good-vimrc.html

set hlsearch                       " highlight search results

" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
" set foldnestmax=10      " 10 nested fold max
" set foldmethod=indent   " fold based on indent level
" set foldmethod=manual

let g:vim_markdown_folding_disabled = 1


" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Use visual bell instead of beeping when doing something wrong
set visualbell
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue
set cmdheight=2


set incsearch                      " move cursor as you type when searching
set smarttab                       " tab setting aware <tab> key

set wildmenu                    " Enable enhanced tab autocomplete.

" colemak no special actions defined currently
" noremap h <NOP>
" noremap j <NOP>
"    set langmap=li
" noremap k <NOP>
" noremap l <NOP>


set wrap "Wrap lines


set fsync                          " call fsync() for robust file saving


" Linebreak on 100 characters
set lbr
set tw=100


if has('unnamedplus')
  " use system clipboard
  set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
end



set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set shiftround
set ignorecase                     " ignore case when searching
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


if has('nvim')
	set inccommand=nosplit
end

"
" Enable persistent-undo
"
set undofile
set undodir=~/.vim/undodir/        " enable persistent-undo


"
" spell checking
"
set spellfile=~/.vim/spell/en.utf-8.add
" map <F8>  :setlocal spell spelllang=de <return>

" wget -P ~/.vim/spell/ http://ftp.vim.org/vim/runtime/spell/de.utf-8.sug
" wget -P ~/.vim/spell/ http://ftp.vim.org/vim/runtime/spell/de.utf-8.spl

"
" https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys
"
"switch spellcheck languages
let g:myLang = 0
let g:myLangList = [ "nospell", "de_de", "en_us" ]
function! MySpellLang()
  "loop through languages
  let g:myLang = g:myLang + 1
  if g:myLang >= len(g:myLangList) | let g:myLang = 0 | endif
  if g:myLang == 0 | set nospell | endif
  if g:myLang == 1 | setlocal spell spelllang=de_de | endif
  if g:myLang == 2 | setlocal spell spelllang=en_us | endif
  echo "language:" g:myLangList[g:myLang]
endf

map <F7> :call MySpellLang()<CR>
imap <F7> <C-o>:call MySpellLang()<CR>



