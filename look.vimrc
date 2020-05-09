

if has('gui_running')
    set guifont=Cousine\ Regular\ 12
    set t_Co=256

    " GUI is running or is about to start.
    " Maximize gvim window (for an alternative on Windows, see simalt below).
    set lines=39 columns=130
endif

if has('mouse')
	set mouse=a
endif





"colorscheme nova

" The following is nice
"let g:background_contrast_dark='hard'
" let g:background_contrast_light='hard'
" set background=dark
" colorscheme gruvbox
" colorscheme one
" set background=dark " for the dark version
" colorscheme OceanicNext

if (has("termguicolors"))
    set termguicolors
endif

set background=dark
colorscheme PaperColor


"let g:airline_theme = 'solarized'
"let g:airline_theme = 'tomorrow'
"colorscheme pencil
" interesting schemes: jellyx
"let g:airline_theme = 'papercolor'


" Suggested color names (these are available on most systems):
"     Red		LightRed	DarkRed
"     Green	LightGreen	DarkGreen	SeaGreen
"     Blue	LightBlue	DarkBlue	SlateBlue
"     Cyan	LightCyan	DarkCyan
"     Magenta	LightMagenta	DarkMagenta
"     Yellow	LightYellow	Brown		DarkYellow
"     Gray	LightGray	DarkGray
"     Black	White
"     Orange	Purple		Violet

