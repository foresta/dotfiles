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
    
    call dein#add('scrooloose/nerdtree')

    " elixir
    call dein#add('elixir-lang/vim-elixir')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
" }}}

" golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = {'mode': 'active', 'passive_filetypes': ['go'] }

autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/


function! s:dash(...)
      let word = len(a:000) == 0 ? input('Dash search: ') : a:1
        call system(printf("open dash://'%s'", word))
    endfunction
    command! -nargs=? Dash call <SID>dash(<f-args>)
