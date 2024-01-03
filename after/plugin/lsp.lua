local lsp_zero = require('lsp-zero')
lsp_zero.preset('recommended')
lsp_zero.setup()

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers

--require'lspconfig'.lua_ls.setup{} -- Lua
--require'lspconfig'.java_language_server.setup{} -- Java
--require'lspconfig'.eslint.setup{} -- JS/TS
--require'lspconfig'.tsserver.setup{} -- TS
--require'lspconfig'.vuels.setup{} -- Vue
