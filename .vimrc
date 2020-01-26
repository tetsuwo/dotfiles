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
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Support
Plug 'nanotech/jellybeans.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'

" JavaScript
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

" PHP
"Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}
"Plug 'vim-scripts/php_localvarcheck.vim'
"Plug 'vim-scripts/errormarker.vim'
Plug 'vim-syntastic/syntastic'

" Go
" neovim の警告が五月蝿い
"Plug 'fatih/vim-go'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" Nginx
Plug 'chr4/nginx.vim'

" Markdown
Plug 'plasticboy/vim-markdown'

" SCSS
Plug 'cakebaker/scss-syntax.vim'

" Practice
Plug 'tetsuwo/unchi.vim'

" Initialize plugin system
call plug#end()

" Required:
filetype plugin indent on
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

" VIMDIFF SETTING {{{
" ----------------------------------------------------------------
"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
"highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
"highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
"highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
" }}}

" PHP SETTING {{{
" ----------------------------------------------------------------
" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_debug = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpmd_post_args='unusedcode'
"let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_checkers = ['phpmd']
" original
function! PHPLint()
    let result = system( &ft . ' -l ' . bufname(""))
    echo result
endfunction
autocmd BufWritePost *.php call PHPLint()
autocmd BufNewFile,BufRead *.twig set filetype=php
" }}}

" MARKDOWN SETTING {{{
" ----------------------------------------------------------------
" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
" }}}

