

"set guifont=FiraCode:h13
if has('gui_running')
    set guifont=Cousine\ Regular\ 13
    set guifont=Roboto\ Mono\ 13
    set t_Co=256

    "
    " Disable menu (m) and toolbar (T)
    "
    set guioptions-=m
    set guioptions-=T

    " GUI is running or is about to start.
    " Maximize gvim window (for an alternative on Windows, see simalt below).
    set lines=39 columns=130
endif

if has('mouse')
	set mouse=a
endif


if (has("termguicolors"))
    set termguicolors
endif

set background=dark
colorscheme PaperColor


" Suggested color names (these are available on most systems):
"     Red	LightRed	DarkRed
"     Green	LightGreen	DarkGreen	SeaGreen
"     Blue	LightBlue	DarkBlue	SlateBlue
"     Cyan	LightCyan	DarkCyan
"     Magenta	LightMagenta	DarkMagenta
"     Yellow	LightYellow	Brown		DarkYellow
"     Gray	LightGray	DarkGray
"     Black	White
"     Orange	Purple		Violet

