set nocompatible

:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Basic curlyboy completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

set wildmenu

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

set omnifunc=syntaxcomplete#Complete

set path+=$PWD/**

set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set grepprg=ag\ --nogroup\ --nocolor


" load indent file for the current filetype

filetype indent on

:syntax enable

" Prevent vim from adding a newline at the end of the file

set fileformats+=dos

function! <SID>StripTrailingWhitespaces()

  " Preparation: save last search, and cursor position.

  let _s=@/

  let l = line(".")

  let c = col(".")

  " Do the business:

  %s/\s\+$//e

  " Clean up: restore previous search history, and cursor position

  let @/=_s

  call cursor(l, c)

endfunction

command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

let g:jsx_ext_required = 0

nmap ,w :StripTrailingWhitespaces<CR>

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256

execute pathogen#infect()

