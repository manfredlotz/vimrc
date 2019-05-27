

noremap <S-Up> <Up>
noremap <S-Down> <Down>


"
" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 




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
