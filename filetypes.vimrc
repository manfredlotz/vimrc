
" fish plugin: turn off automatic folding
autocmd FileType fish setlocal foldmethod=manual


" The following disabled now as I think that `set autoread`
" is sufficient
" Manfred Lotz, October 23 2020
" in companion with `set autoread` this makes sure that a file
" gets reloaded if changed outside of vim
"au CursorHold * checktime


" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
" not quite sure if I should set `set autochdir` for this 
"


"   Hmmm, this doesn't seem to work properly
"   Perhaps it is simply not required
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix
"     \ let python_highlight_all=1
