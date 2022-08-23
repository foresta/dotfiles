nmap <silent> <Space>cd <Plug>(coc-definition)
nmap <silent> <Space>cy <Plug>(coc-type-definition)
nmap <silent> <Space>ci <Plug>(coc-implementation)
nmap <silent> <Space>cr <Plug>(coc-references)
nmap <silent> <Space>ca <Plug>(coc-codeaction)

nmap <silent> <Space>def <Plug>(coc-definition)
nmap <silent> <Space>tdef <Plug>(coc-type-definition)
nmap <silent> <Space>ref <Plug>(coc-references)
nmap <silent> <Space>fmt <Plug>(coc-format)
nmap <silent> <Space>rnm <Plug>(coc-rename)
nnoremap <silent> <Space>doc :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
