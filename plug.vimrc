"
" {----------------------------------------------------------------
"
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')


"
" {----------------------------------------------------------------
"
" Light and dark color themes for vim

Plug 'NLKNguyen/papercolor-theme'


"
" {----------------------------------------------------------------
"
" A light and configurable statusline/tabline plugin

Plug 'itchyny/lightline.vim'

set laststatus=2

" Get rid of -- INSERT -- as INSERT is already shown in the statusline
set noshowmode


"
" {----------------------------------------------------------------
"
" A vim plugin to keep a simple diary
"
Plug 'ryot4/diary.vim'
" diary location
let g:diary_dir = expand('~/Sync/diary')


"
" {----------------------------------------------------------------
"
" tabnine: Offers advanced AI based autocompletion
if IsOnMainframe()
  Plug 'maxboisvert/vim-simple-complete'
else
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Give more space for displaying messages.
set cmdheight=2
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


endif

"
" {----------------------------------------------------------------
"
" Provides a bundle of fzf based commands and mappings

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

nnoremap <leader>h :History<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>m :FZFMru<CR>

"nnoremap <leader>m :History<CR>


"
" {----------------------------------------------------------------
"
" Shows trailing whitespace and offers :StripWhitespace
" making whitespace cleaning effortless

Plug 'ntpeters/vim-better-whitespace'

"


"
" {----------------------------------------------------------------
" for commenting stuff out
"

Plug 'tomtom/tcomment_vim'


"
" {----------------------------------------------------------------
"
" Displaying indentation levels

Plug 'Yggdroot/indentLine'
let g:indentLine_fileTypeExclude = ['markdown']

"
" This is an alternative plugin which also
" could be taken here
"
" Plug 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_guide_size = 1
" let g:indent_guides_color_change_percent = 30
" let g:indent_guides_color_exclude_filetypes = ['markdown']


"
" {----------------------------------------------------------------
"

Plug 'godlygeek/tabular'


"
" {----------------------------------------------------------------
"
" Intelligently reopen files where you left off.

Plug 'farmergreg/vim-lastplace'


"
" {----------------------------------------------------------------
"
" A simple template plugin

Plug 'aperezdc/vim-template'
let g:templates_directory = ['~/.vim/templates', '~/.vim/templates/diary']

"
" {----------------------------------------------------------------
"
" A collections of language packs

Plug 'sheerun/vim-polyglot'


"
" {----------------------------------------------------------------
"
" Insert or delete brackets, parens, quotes in pair.

Plug 'jiangmiao/auto-pairs'


"
" {----------------------------------------------------------------
"

Plug 'mbbill/undotree'


"
" {----------------------------------------------------------------
"
" Help read code by showing different levels of parenthesis in
" different colors

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" }


"
" {----------------------------------------------------------------
"
" Offers scratch buffer functionality

Plug 'manfredlotz/scratch.vim'



"
" {----------------------------------------------------------------
"
" File system explorer for the vim editor
" See also here: https://medium.com/@victormours/a-better-nerdtree-setup-3d3921abc0b9

Plug 'preservim/nerdtree'

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Close if the only remaining window is a nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>



"
" {----------------------------------------------------------------
"
" The plugin is all about "surroundings": parentheses, brackets, quotes,
" XML tags, and more. The plugin provides mappings to easily delete,
" change and add such surroundings in pairs.

Plug 'tpope/vim-surround'

"
" {----------------------------------------------------------------
"
" Opens URLs on the current line in your default browser via the OS X open
" command, or another command you specify.
" Requires ruby to be installed

Plug 'henrik/vim-open-url'
" Need to specify the open command as the default `open` is for OS X only
let g:open_url_browser="gnome-open"
" Trigger with <leader>u or :OpenURL.


"
" {----------------------------------------------------------------
"
" Add icons to your plugins

Plug 'ryanoasis/vim-devicons'


"
" {----------------------------------------------------------------
"
" This plugin provides a start screen for Vim and Neovim.
" Invoke it manually: :Startify
Plug 'mhinz/vim-startify'


" Automatically clear highlight (|:nohlsearch|) after cursor
" moved and some other autocmd event.
Plug 'haya14busa/is.vim'

" Type s and two letters
Plug 'justinmk/vim-sneak'
let g:sneak#label = 1



" " An always-on highlight for a unique character in every word
" " on a line to help you use f, F and family.
" Plug 'unblevable/quick-scope'
" " Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" augroup qs_colors
"   autocmd!
"   autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
"   autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
" augroup END

Plug 'rhysd/clever-f.vim'
let g:clever_f_smart_case = 1




"
" {----------------------------------------------------------------
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()




"
"
" Not sure about the following
"
"


"Plug 'dense-analysis/ale'

" Enable ESLint only for JavaScript.
"let b:ale_linters = ['eslint']



" " vim-which-key is vim port of emacs-which-key that displays available
" " keybindings in popup.
"
" " On-demand lazy load
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" An easymotion alternative
" Not sure I need it but it is a very good alternative
"Plug 'zsugabubus/vim-jumpmotion'
