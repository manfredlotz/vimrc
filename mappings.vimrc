

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



" want to use update instead of write
cnoreabbrev w update 

function! UpdateQ()
	update
	quit
endfunction

cnoreabbrev wq call UpdateQ()



function! SwitchBuffer()
	b#
endfunction

nnoremap <leader><tab>  :call SwitchBuffer()<CR>
