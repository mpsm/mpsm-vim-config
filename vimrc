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
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
let g:NERDTreeWinPos = "right"

if has("gui_running")
	set go-=T
	set go-=r
	set go-=L
endif

" filetype specific "
filetype plugin indent on

" plugin behaviour "
let g:errormarker_errorgroup = "Error"
set diffopt+=vertical
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" key mappings "
nnoremap <F7> :silent make<CR>:redraw!<CR>
nnoremap <S-F7> :silent make clean<CR>:redraw!<CR>

" autoload plugins "
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
	au! BufRead,BufNewFile meson.build setfiletype meson
augroup end

" custom functions "
function IDE_Hide()
	cclose
	TlistClose
	NERDTreeClose
endfunction

function IDE_Show()
	copen10
	TlistOpen
	NERDTree
	copen10
	wincmd W
endfunction
command IDEShow call IDE_Show()
command IDEHide call IDE_Hide()
