

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
cnoreabbrev w! update!

function! UpdateQ()
	update
	quit
endfunction

cnoreabbrev wq call UpdateQ()



function! SwitchBuffer()
	b#
endfunction

nnoremap <leader><tab>  :call SwitchBuffer()<CR>


"
" skeletons
"
"au BufNewFile *.md 0r ~/.vim/skeletons/md.skel | let IndentStyle = "md"



"   Simple scratch buffer implementation
"
" Found here: https://dhruvasagar.com/2014/03/11/creating-custom-scratch-buffers-in-vim
"

let g:scratchbuf_no=1

function! ScratchEdit(cmd, options)
    exe a:cmd '[Scratch' . g:scratchbuf_no . ']'
    let g:scratchbuf_no += 1
    "setl buftype=nofile noswapfile bufhidden=hide buflisted
    Scratchify
    if !empty(a:options) | exe 'setl' a:options | endif
endfunction

command! Scratchify setlocal buflisted noswapfile buftype=nofile bufhidden=hide

command! -bar -nargs=* Scratch call ScratchEdit('edit', <q-args>)
command! -bar -nargs=* Scratchs call ScratchEdit('split', <q-args>)
command! -bar -nargs=* Scratchv call ScratchEdit('vsplit', <q-args>)
command! -bar -nargs=* Scratcht call ScratchEdit('tabe', <q-args>)
