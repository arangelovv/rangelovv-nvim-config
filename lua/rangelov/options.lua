vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4


vim.diagnostic.config({
  virtual_text = true,  -- Enable inline error messages
  signs = true,         -- Show error signs in the gutter
  underline = true,     -- Underline problematic code
  update_in_insert = false, -- Avoid updating diagnostics while typing
  severity_sort = true, -- Sort diagnostics by severity
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
