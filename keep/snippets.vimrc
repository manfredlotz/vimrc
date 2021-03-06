" Here we have stuff that we wanted to use 
" but currently do not use. Perhaps it is useful
" at some point in time
"


"
" http://inlehmansterms.net/2014/09/04/sane-vim-working-directories/
"
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

