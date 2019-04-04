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
set shell=/bin/sh

" APPEARANCE "
syntax on
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
let g:Powerline_symbols = 'fancy'
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme monokai

if has("gui_running")
	set go-=T
	set go-=r
	set go-=L
endif

" filetype specific "
filetype plugin indent on

" plugin behaviour "
let g:errormarker_errorgroup = "Error"

" key mappings "
nnoremap <F7> :silent make<CR>:redraw!<CR>

" autoload plugins "
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
augroup end
