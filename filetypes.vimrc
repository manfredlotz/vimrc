
" fish plugin: turn off automatic folding
autocmd FileType fish setlocal foldmethod=manual




" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h
" don't use it set autochdir                      " current directory is the same as the file being edited

