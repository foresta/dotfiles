colorscheme iceberg
colorscheme hybrid

set background=dark
syntax on
set t_Co=256
set term=xterm-256color
set enc=japan
let g:hybrid_use_iTerm_colors = 1
set clipboard=unnamed,autoselect

"indent
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
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.scss setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.json setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

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
nnoremap <c-j> :<C-u>call append(expand('.'), '')<Cr>j
nnoremap <c-k> O<ESC>

" config vimdiff colors
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21

set incsearch
set hlsearch

"TAB,EOFなどを可視化する
set list
"set listchars=tab:>-,extends:<,trail:,eol:↩︎
set listchars=tab:»-,trail:•,nbsp:%,eol:↩︎

" 全角スペースの可視化
highlight ZenkakuSpace cterm=underline ctermbg=red guibg=#666666
au BufWinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')
au WinEnter * let w:m3 = matchadd("ZenkakuSpace", '　')

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

    call dein#add('Shougo/vimproc.vim', { 'build': 'make' })
    call dein#add('Shougo/neocomplete.vim')

    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
    
    call dein#add('scrooloose/nerdtree')
    call dein#add('Xuyuanp/nerdtree-git-plugin')

    call dein#add('luochen1990/rainbow')

    " elixir
    call dein#add('elixir-lang/vim-elixir')

    " golang
    call dein#add('fatih/vim-go')

    " elm
    call dein#add('elmcast/elm-vim')

    " kotlin
    call dein#add('udalov/kotlin-vim')

    call dein#add('tpope/vim-fugitive')
    call dein#add('gregsexton/gitv')

    call dein#add('Shougo/unite.vim')
    call dein#add('Shougo/neomru.vim')
    call dein#add('Shougo/unite-outline')

    call dein#add('yuttie/comfortable-motion.vim')

    call dein#add('h1mesuke/vim-alignta')

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
" }}}

" rainbow
let g:rainbow_active = 1

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

" elm
"let g:elm_jump_to_error = 0
"let g:elm_make_output_file = "elm.js"
"let g:elm_make_show_warnings = 0
"let g:elm_syntastic_show_warnings = 0
"let g:elm_browser_command = ""
"let g:elm_detailed_complete = 0
"let g:elm_format_autosave = 1
"let g:elm_format_fail_silently = 0
"let g:elm_setup_keybindings = 1

" vim-fugitive
nnoremap <silent> <Space>gb :Gblame<CR>
nnoremap <silent> <Space>gd :Gdiff<CR>
nnoremap <silent> <Space>gds :Gdiff HEAD<CR>
nnoremap <silent> <Space>gdc :Gdiff HEAD~<CR>
nnoremap <silent> <Space>gs :Gstatus<CR>
nnoremap <silent> <Space>ga :Gwrite<CR>
nnoremap <silent> <Space>gc :Gcommit -v<CR>
nnoremap <silent> <Space>gf :Gfetch<CR>

" unite.vim
nnoremap <silent> <Space>ug :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> <Space>uu :<C-u>Unite file_mru<CR>
nnoremap <silent> <Space>uf :<C-u>Unite -start-insert file_rec/async<CR>
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>uo :<C-u>Unite -direction=botright -vertical -no-quit -winwidth=40 outline<CR>

" vim-alignta
vnoremap <silent> <Space>aa :<C-u>'<,'>Alignta <- 
vnoremap <silent> <Space>ae :<C-u>'<,'>Alignta -> 

" FZF
set rtp+=/usr/local/bin/fzf
set rtp+=~/.fzf
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'window': '20split enew' }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
nnoremap <silent> <Space>fb :Buffers<CR>
nnoremap <silent> <Space>ft :Tags<CR>
nnoremap <silent> <Space>ff :Files<CR>
nnoremap <silent> <Space>fx :Commands<CR>
nnoremap <silent> <Space>fg :GFiles<CR>
nnoremap <silent> <C-]> :call fzf#vim#tags(expand('<cword>'))<CR>

let s:unite_ignore_file_rec_patterns=
      \ ''
      \ .'vendor/bundle\|.bundle/\|\.sass-cache/\|'
      \ .'node_modules/\|bower_components/\|'
      \ .'\.\(bmp\|gif\|jpe\?g\|png\|webp\|ai\|psd\|tps\|c3b\)"\?$'
 let g:unite_source_rec_max_cache_files = 5000

call unite#custom#source(
      \ 'file_rec/async,file_rec/git',
      \ 'ignore_pattern',
      \ s:unite_ignore_file_rec_patterns)

" using highway in unite grep
if executable('hw')
    let g:unite_source_grep_command = 'hw'
    let g:unite_source_grep_default_opts = '--no-group --no-color'
    let g:unite_source_grep_recursive_opt = ''
endif

" gitv
nnoremap <silent> <Space>gl :Gitv --all<CR>
nnoremap <silent> <Space>gh :Gitv!<CR>

" nerdtree
let NERDTreeShowHidden=1
let NERDTreeWinSize=40
nnoremap <silent> <Space>nt :NERDTreeToggle<CR>
nnoremap <silent> <Space>nf :NERDTreeFind<CR>

" neocomplete
" 起動時に有効化
let g:neocomplete#enable_at_startup = 1

" jq
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
  if 0 == a:0
    let l:arg = "."
  else
    let l:arg = a:1
  endif
  execute "%! jq \"" . l:arg . "\""
endfunction

" comfortable-motion
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


function! s:dash(...)
      let word = len(a:000) == 0 ? input('Dash search: ') : a:1
        call system(printf("open dash://'%s'", word))
    endfunction
    command! -nargs=? Dash call <SID>dash(<f-args>)
