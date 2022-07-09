" ==========
" basic
" ==========

" [color]

colorscheme iceberg
set background=dark
syntax on
set t_On=256

" transparent background
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Folded ctermbg=none
highlight EndOfBuffer ctermbg=none 

" [UI]

set title
set ruler
set cursorline
set number
set showmatch


" [indent]

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.ex setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.exs setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.js setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.ts setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.jsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.tsx setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.scss setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.vue setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2
"    autocmd BufNewFile,BufRead *.re setlocal noexpandtab
augroup END


" [search]

set incsearch
set hlsearch


" [encoding]

set encoding=utf8
set fileencoding=utf8


" [swapfile]

set noswapfile
set nobackup
set nowritebackup

set backspace=indent,eol,start

" [clipboard]
set clipboard=unnamed

" [sound]

" no beep sound
set vb t_vb=


" [env]

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let $CONFIG = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let $DATA = empty($XDG_DATA_HOME) ? expand('$HOME/.local/share') : $XDG_DATA_HOME


" ===========
" Editor
" ===========


" Invisibles
"
set list
" show invisible characters
set listchars=tab:»-,trail:␣,nbsp:%,eol:↵
" show Em space
highlight EmSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("EmSpace", '　')
au WinEnter * let w:m3 = matchadd("EmSpace", '　')


" ===========
" keymap
" ===========
nnoremap ; :
nnoremap : ;

inoremap <c-d> <delete>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-h> <left>
inoremap <c-l> <right>


" ===========
" Plugins
" ===========

augroup PluginInstall
    autocmd!
    autocmd VimEnter * if dein#check_install() | call dein#install() | endif
augroup END
command! -nargs=0 PluginUpdate call dein#update()

let s:dein_dir = expand('$DATA/dein')

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo.dein.vim'

    if !isdirectory(s:dein_repo_dir)
        execute printf('!git clone %s %s', 'https://github.com/Shougo/dein.vim', s:dein_repo_dir)
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:dein#install_pax_processed = 48

let s:toml_file = '~/.config/nvim/dein.toml'
let s:toml_lazy_file = '~/.config/nvim/dein_lazy.toml'
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    call dein#load_toml(s:toml_file, {'lazy': 0})
    call dein#load_toml(s:toml_lazy_file, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on

"""

