require("rangelov.options")
require("rangelov.plugins")
require("rangelov.plugins.treesitter")
require("rangelov.plugins.nvim-tree")
require("rangelov.plugins.lualine")
require("rangelov.plugins.lspconfig")
require("rangelov.plugins.nulls")
require("rangelov.plugins.autocmp")

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
local builtin = require('telescope.builtin')

vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<Leader>s', ':w<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) --fuzzy find --extract to keymaps.lua
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })   --live grep --extract to keymaps.lua

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)                                 --open/close nvim-tree
vim.keymap.set("n", "<leader>w", '<C-w>')                                                --switch between split windows

vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {})

vim.keymap.set("n", "<leader>1", vim.lsp.buf.format, {})                           --formatting

vim.keymap.set("n", "<leader>v", ':vsplit<CR>', { noremap = true, silent = true }) --Vertical Split
vim.keymap.set("n", "<leader>h", ':split<CR>', { noremap = true, silent = true })  --Horizontal Split
vim.keymap.set("n", "<leader>q", ':q<CR>', { noremap = true, silent = true })      --Close Window

vim.keymap.set("n", '<leader>=', ':vertical resize +6<CR>', { noremap = true, silent = true })
vim.keymap.set("n", '<leader>-', ':vertical resize -6<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>]', ':resize +6<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>[', ':resize -6<CR>', { noremap = true, silent = true })
