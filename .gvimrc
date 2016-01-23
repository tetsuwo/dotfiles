""
" MY GVIMRC SETTINGS
"
" @author Tetsuwo OISHI
"

" SOURCE FILES {{{
" ----------------------------------------------------------------
if has('win32') || has('win64')
    source ~/.vim/config/kaoriya.gvimrc
endif
" }}}

" ENVIRONMENT VARIABLES {{{
" ----------------------------------------------------------------
let $MYGVIMRC = '~/.gvimrc'
" }}}

" BASIC SETTING {{{
" ----------------------------------------------------------------
set columns=100
set lines=50
set guioptions=          " hide toolbar
set virtualedit+=block   " extend rectange selection
set visualbell t_vb=     " beep tone sound
" }}}

" GUI SETTING {{{
" ----------------------------------------------------------------
gui
set transparency=220
" }}}

" COMMAND SETTING {{{
" ----------------------------------------------------------------
" open .gvimrc
noremap <space>. :<C-u>edit $MYGVIMRC<CR> 
" reload .gvimrc
command! ReloadVimrc source $MYGVIMRC
noremap <space>.r :<C-u>ReloadVimrc<CR>
" open vim exploler
noremap <C-e> :Ex<CR>
" open vim filer
"noremap <C-r> :Vex<CR>
" }}}

" COLOR SCHEME {{{
" ----------------------------------------------------------------
let g:jellybeans_italic=0
colorscheme jellybeans
"let g:solarized_italic=0
"colorscheme solarized
" }}} 

" POPUP MENU SETTING {{{
" ----------------------------------------------------------------
hi Pmenu guibg=#000000 guifg=#cccccc
hi PmenuSel guibg=#000066 guifg=#eeffff
hi PmenuSbar guibg=#999999
" }}} 

" FONT SETTING {{{
" ----------------------------------------------------------------
"set guifont=Ricty\ Regular:h14
" }}}

" PRINTER SETTING {{{
" ----------------------------------------------------------------
set printheader=%F%=%N\ /\ %{line('$')/73+1}
set printoptions=wrap:y
set printoptions=number:y
set printoptions=portrait:y
set printoptions+=paper:A4
set printoptions=duplex:off
" }}}

" HTML SETTING {{{
" ----------------------------------------------------------------
" vimの画面そのままにHTMLファイルを生成する
let html_use_encoding="utf-8"  " charset
let html_use_css = 1           " coloring stylesheet
let use_xhtml = 1              " output xhtml
let g:html_no_pre = 1          " brank with <br\s/?>
"let html_number_lines = 1      " line number
let html_font = "Ricty Regular,sans-serif"
" }}}

" PHP SETTING {{{
" ----------------------------------------------------------------
let php_sql_query=1       " PHP中のSQLをハイライト
let php_htmlInStrings=1   " PHP中のHTMLをハイライト
let php_folding = 0       " 関数,Classでの折り畳有効
" }}}

" vim:foldmethod=marker:foldlevel=0
