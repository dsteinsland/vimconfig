" vim config
"
" plugins installed:
"
" color scheme:
"


" global options
set nocompatible
set visualbell
set showmode
set ruler
set number
set wrap linebreak nolist
set showbreak=…

" gui / mac specific
if has("gui_running")
	set guioptions=egmrt
set background=dark
	colorscheme clarity "lucius railscasts
	if has("gui_macvim")
		set transparency=10
		set guifont=Menlo:h11
	endif
endif

" tabs and spaces
set ts=2 sts=2 sw=2 noexpandtab
set sta
set ai
set si

" search
set incsearch
set ignorecase

"minibufexplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" commands
if has("autocmd")
	filetype on
	set ofu=syntaxcomplete#Complete
	" file specific
	autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
	autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab

	" reload .vimrc after save
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

" move between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" additional edit commands
let mapleader=","
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
" edit .vimrc
nmap <leader>v :tabedit $MYVIMRC<CR>
