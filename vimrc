" VIM settings "
set nocompatible

" PLUGIN MANAGEMENT "
call pathogen#infect() 

" GENERAL "
set novb
set mouse=a
set number
set nowrap
set encoding=utf-8
set laststatus=2
set t_Co=256
set bs=2
set fileencodings=ucs-bom,utf-8,default,cp1250,latin1

" APPEARANCE "
syntax on
let g:Powerline_symbols = 'fancy'
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme badwolf
if &diff
	colorscheme gruvbox
	set background=dark
endif

" filetype specific "
filetype plugin indent on

" plugin behaviour "
let g:SuperTabDefaultCompletionType = "context"
let g:errormarker_errorgroup = "Error"

" key mappings "
nnoremap <F5> :GundoToggle<CR>
nnoremap <F7> :silent make<CR>:redraw!<CR>

" autoload plugins "
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
