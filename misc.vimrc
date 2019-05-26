
"
" Save a file as root
"
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null'


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

