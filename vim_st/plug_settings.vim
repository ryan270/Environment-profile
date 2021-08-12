"Plugin Settings"

"nvim-r settings"
let R_assign = 0
let R_rconsole_width = 0
let R_rconsole_height = 12

"dadbod-ui settings"
let g:db_ui_auto_execute_table_helpers = 1
let g:db_ui_nvimwinwidth = 35

"LSP settings"
set completeopt=menuone,noselect


"Installing Language Servers"
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.r_language_server.setup{}
require'lspconfig'.vimls.setup{}
require'lspconfig'.sqlls.setup{}

--Auto Completion
-- Compe setup
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' },
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultinips = true;
    luasnip = true;
  };
}
