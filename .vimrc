set nocompatible

:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Basic curlyboy completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set wildmenu

set nonumber

set hlsearch

set number

set expandtab

set shiftwidth=2

set softtabstop=2

set nowrap

set dir=~/.vimswap//,/var/tmp//,/tmp//,.

set smartindent

set autoindent

let g:CommandTMaxFiles=50000

let g:CommandTFileScanner='find'

let g:CommandTMaxCachedDirectories=3

filetype plugin on


set path+=$PWD/**

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set grepprg=ag\ --nogroup\ --nocolor


" load indent file for the current filetype

filetype indent on

:syntax enable

" Prevent vim from adding a newline at the end of the file

let g:jsx_ext_required = 0

nmap ,w :StripTrailingWhitespaces<CR>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256
