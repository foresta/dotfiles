let plugins = dein#load_cache_raw(['/Users/k_morita/.vimrc'], 1)
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_base_path = '/Users/k_morita/.vim/bundle'
let g:dein#_runtime_path = '/Users/k_morita/.vim/bundle/.dein'
let &runtimepath = '/Users/k_morita/.vim,/Users/k_morita/.vim/bundle/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim74,/usr/local/share/vim/vimfiles/after,/Users/k_morita/.vim/after,/Users/k_morita/.vim/bundle/repos/github.com/Shougo/dein.vim,/Users/k_morita/.vim/bundle/.dein/after'
filetype off
