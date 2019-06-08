
" fish plugin: turn off automatic folding
autocmd FileType fish setlocal foldmethod=manual

" in companion with `set autoread` this makes sure that a file
" gets reloaded if changed outside of vim
au CursorHold * checktime


" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
" not quite sure if I should set `set autochdir` for this 

