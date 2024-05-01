local lsp_zero = require('lsp-zero')
lsp_zero.preset('recommended')
lsp_zero.setup()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
    ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
    ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
    ["<C-y>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})


-- here you can setup the language servers
require'lspconfig'.lua_ls.setup{} -- Lua
require'lspconfig'.jdtls.setup{} -- Java
require'lspconfig'.eslint.setup{} -- JS/TS
require'lspconfig'.tsserver.setup{} -- TS
require'lspconfig'.cssls.setup{} -- CSS
require'lspconfig'.gopls.setup{} -- Go
require'lspconfig'.pylsp.setup{} -- Python
require'lspconfig'.html.setup{} -- HTML

require'lspconfig'.volar.setup {
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
  init_options = {
    vue = {
      hybridMode = false,
    },
  },
}
