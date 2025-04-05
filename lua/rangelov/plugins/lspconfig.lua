require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "angularls", "csharp_ls", 'eslint', 'ts_ls', 'ast_grep' },
}
    
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.angularls.setup {capabilities = capabilities}
lspconfig.lua_ls.setup {capabilities = capabilities}
lspconfig.eslint.setup {capabilities = capabilities}
lspconfig.csharp_ls.setup {capabilities = capabilities}
lspconfig.ast_grep.setup {capabilities = capabilities}
lspconfig.ts_ls.setup {capabilities = capabilities}

