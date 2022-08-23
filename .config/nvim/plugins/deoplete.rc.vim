""""""""""""""
" options
""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 1

"let g:deoplete#auto_complete_delay = 0
call deoplete#custom#option("auto_complete_delay", 0)

"let g:deoplete#max_list = 10000
call deoplete#custom#option("max_list", 10000)

"let g:deoplete#enable_smart_case = 1
call deoplete#custom#option("smart_case", v:true)

"let g:deoplete#enable_refresh_always = 0
call deoplete#custom#option("refresh_always", v:false)

"let g:deoplete#auto_complete_start_length = 1
call deoplete#custom#option("min_pattern_length", 1)

""""""""""""""
" file
""""""""""""""
"let g:deoplete#file#enable_buffer_path = 1
call deoplete#custom#var("file", "enable_buffer_path", v:true)
