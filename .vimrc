syntax on
set t_Co=256
set term=xterm-256color
set enc=japan
let g:hybrid_use_iTerm_colors = 1

set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set smartindent

set nohlsearch
set cursorline
set number
set ruler
set title
set showmatch

set encoding=utf8
set fileencoding=utf8
set noswapfile
set nobackup
set backspace=indent,eol,start
set vb t_vb=

"INSERTモードの時のキーのリマップ
inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>

"NORMALモードの時のキーのリマップ
nnoremap ; :
nnoremap : ;


set incsearch

"TAB,EOFなどを可視化する
set list
"set listchars=tab:>-,extends:<,trail:,eol:↩︎
set listchars=tab:»-,trail:•,nbsp:%,eol:↲


" lintの設定
let g:syntastic_javascript_checkers=['eslint']
