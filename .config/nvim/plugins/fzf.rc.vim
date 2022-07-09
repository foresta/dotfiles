"fzf"
set rtp+=/usr/local/bin/fzf
set rtp+=~/.fzf
let g:fzf_buffers_jump = 1
let g:fzf_layout = { 'window': '20split enew' }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

nnoremap <silent> <Space>fb :Buffers<CR>
nnoremap <silent> <Space>ff :Files<CR>
