"MAPPINGS"
"General remaps"

"Use Command to navigate panes now"
inoremap ;; <Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k

"Remap exit to normal mode & leader"
tnoremap ;; <C-\><C-n>
let maplocalleader = " "

"UndoTree remap"
nnoremap <localleader>U :UndotreeToggle<cr>

"vimcmdline remap"
let cmdline_map_send_paragraph = '<LocalLeader>pp'
let cmdline_map_send = '<Space>l'
let cmdline_map_source_fun = '<LocalLeader>aa'

"dadbod-ui remaps"
nmap <localleader>db <Plug>(DBUI_ExecuteQuery)
xmap <localleader>db <Plug>(DBUI_ExecuteQuery)

"compe remaps"
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
