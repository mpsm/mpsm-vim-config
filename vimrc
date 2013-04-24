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

" APPEARANCE "
syntax on
let g:Powerline_symbols = 'fancy'
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

" filetype specific "
filetype plugin indent on
