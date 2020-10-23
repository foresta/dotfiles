" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

" Change file/rec command.
call denite#custom#var('file/rec', 'command',
    \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" Change default action.
call denite#custom#kind('file', 'default_action', 'split')

" Ag command on grep source
"call denite#custom#var('grep', {
"	\ 'command': ['ag'],
"	\ 'default_opts': ['-i', '--vimgrep'],
"	\ 'recursive_opts': [],
"	\ 'pattern_opt':, [],
"	\ 'separator': ['--'],
"	\ 'final_opts': [],
"	\ })

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'default_opts', ['--follow', '--no-group', '--no-color'])

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#var('grep', 'separator', [])
call denite#custom#var('grep', 'default_opts',
      \ ['--nocolor', '--nogroup'])

nnoremap <silent> <Space>df :<C-u>Denite file/rec<CR>
nnoremap <silent> <Space>dg :<C-u>Denite grep<CR>
nnoremap <silent> <Space>dl :<C-u>Denite line<CR>
nnoremap <silent> <Space>du :<C-u>Denite file_mru<CR>
nnoremap <silent> <Space>dy :<C-u>Denite neoyank<CR>

