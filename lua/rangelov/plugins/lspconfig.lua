require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "angularls", "csharp_ls", 'eslint', 'ts_ls', 'ast_grep', 'cssls', 'tailwindcss', 'clangd', 'pylsp', 'gopls' },
}

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.angularls.setup {capabilities = capabilities}
lspconfig.lua_ls.setup {capabilities = capabilities}
lspconfig.eslint.setup {capabilities = capabilities}
lspconfig.csharp_ls.setup {capabilities = capabilities}
lspconfig.ast_grep.setup {capabilities = capabilities}
lspconfig.ts_ls.setup {capabilities = capabilities}
lspconfig.cssls.setup{capabilities = capabilities}
lspconfig.tailwindcss.setup{capabilities = capabilities}
lspconfig.clangd.setup{capabilities = capabilities}
lspconfig.pylsp.setup{capabilities = capabilities}
lspconfig.gopls.setup{capabilities = capabilities}
require('lspconfig').clangd.setup {
    cmd = { "clangd", "--compile-commands-dir=./" },
}
