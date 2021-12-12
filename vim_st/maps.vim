"NVIM MAPPINGS
inoremap ;; <Esc>
tnoremap ;; <C-\><C-n>
let maplocalleader = " "
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k

"{{{ App Mappings
"UndoTree
nnoremap <localleader>U :UndotreeToggle<cr>

"Fern
nnoremap <silent><localleader>fe :Fern . -drawer -toggle <CR><C-w>=
nmap <buffer> <nowait> < <Plug>(fern-action-leave)
nmap <buffer> <nowait> > <Plug>(fern-action-open)

"vimcmdline
let cmdline_map_send_paragraph = '<LocalLeader>pp'
let cmdline_map_send = '<Space>'
let cmdline_map_source_fun = '<LocalLeader>aa'

"dadbod-ui
nmap <localleader>db <Plug>(DBUI_ExecuteQuery)
xmap <localleader>db <Plug>(DBUI_ExecuteQuery)

"compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
"}}}
