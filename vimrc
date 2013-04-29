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

" APPEARANCE "
syntax on
let g:Powerline_symbols = 'fancy'
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
colorscheme wombat

" filetype specific "
filetype plugin indent on

" plugin behaviour "
let g:SuperTabDefaultCompletionType = "context"
let g:errormarker_errorgroup = "Error"

" key mappings "
nnoremap <F5> :GundoToggle<CR>
nnoremap <F7> :make<CR>
