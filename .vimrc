""
" MY .VIMRC SETTINGS
"
" @author Tetsuwo OISHI
"

" DEFAULT {{{
" ----------------------------------------------------------------
set nocompatible
filetype off
filetype plugin indent off
" }}}

" SET VARS {{{
" ----------------------------------------------------------------
let s:is_win = has('win32') || has('win64')
let s:is_mac = has('mac')
" }}}

" BASIC SETTING {{{
" ----------------------------------------------------------------
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'tetsuwo/unchi.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'editorconfig/editorconfig-vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" }}}

" BASIC SETTING {{{
" ----------------------------------------------------------------
let mapleader = ","
syntax on
set runtimepath+=~/.vim/
set number           " indicate line number
set tabstop=4        " tabサイズ
set expandtab        " タブをスペースに展開しない (expandtab:展開する)
set shiftwidth=4
set autoindent       " インデントを現在行と同一化
set cindent          " C言語型インデント
set smartindent      " 新しい行は自動インデント
"set noswapfile       " swapを作らない
set noundofile
set nobackup         " backupを作らない
set listchars=eol:$,tab:>\ ,extends:< 
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末でカーソルを止めない
" }}}

" COLOR SCHEME {{{
" ----------------------------------------------------------------
"let g:jellybeans_italic=0
colorscheme jellybeans
" }}}

" COMMAND SETTING {{{
" ----------------------------------------------------------------
" hide highlight by search
noremap <esc><esc> :nohlsearch<CR><esc>
" clipboard
vnoremap <silent> <C-p> "0p<CR>
" }}}

" TAGS SETTING {{{
" ----------------------------------------------------------------
filetype on
set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
" }}}

" FUNCTION SETTING {{{
" ----------------------------------------------------------------
function! PHPLint()
    let result = system( &ft . ' -l ' . bufname(""))
    echo result
endfunction
" }}}

" EACH FILE SETTING {{{
" ----------------------------------------------------------------
autocmd BufWritePost *.php call PHPLint()
autocmd BufNewFile,BufRead *.twig set filetype=php
" }}}

" VIMDIFF SETTING {{{
" ----------------------------------------------------------------
"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
" }}}
