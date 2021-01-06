

noremap <S-Up> <Up>
noremap <S-Down> <Down>


"
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

"
" From: https://thoughtbot.com/upcase/videos/onramp-to-vim-configuration
"
" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>

" Bind `q` to close the buffer for help files
autocmd Filetype help nnoremap <buffer> q :q<CR>

" From: https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
" This autocmd changes the window-local current directory to be the same as the
" directory of the current file. It fails silently to prevent error messages when
" you edit files via ftp or new files. It works better in some cases because the
" autocmd is not nested, and will therefore not fire when switching buffers via
" another autocmd.
"
" It will also work in older versions of Vim or versions compiled without the
" 'autochdir' option. Note, however, that there is no easy way to test for this
" autocmd in a script like there is for the 'autochdir' option.
autocmd BufEnter * silent! lcd %:p:h



" want to use update instead of write
cnoreabbrev w update
cnoreabbrev w! update!

function! UpdateQ()
	update
	quit
endfunction

cnoreabbrev wq call UpdateQ()


"
" Switch buffer with <leader><tab>
"
function! SwitchBuffer()
	b#
endfunction

nnoremap <leader><tab>  :call SwitchBuffer()<CR>


"
" write as sudo
"
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null'

