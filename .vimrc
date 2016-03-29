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


set  nocompatible

" Plugins {{{
let g:dein#install_max_processed = 48
augroup PluginInstall
    autocmd!
    autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END
command! -nargs=0 PluginUpdate call dein#update()

let s:plugin_dir = expand('~/.vim/bundle/')
let s:dein_dir = s:plugin_dir . 'repos/github.com/Shougo/dein.vim'
execute 'set runtimepath +=' . s:dein_dir

if !isdirectory(s:dein_dir)
    call mkdir(s:dein_dir, 'p')
    silent execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_dir)
endif

if dein#load_state(s:plugin_dir)
    call dein#begin(s:plugin_dir)

    " golang
    call dein#add('fatih/vim-go')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
" }}}

" golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/
