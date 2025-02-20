vim.wo.number = true --line numbers
vim.o.relativenumber = true -- relative line numbers

vim.o.clipboard = 'unnamedplus' -- sync clipboard between os and nvim aka if i yank something i can paste it into google

vim.o.wrap = false
vim.o.linebreak = false

vim.o.scrolloff = 8

vim.o.autoindent = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.shiftwidth = 4 --# of spaces inserted for each indentation
vim.o.tabstop = 4  -- insert n spaces for a tab
vim.o.softtabstop = 4 -- # of spaces that a tab counts for
vim.o.expandtab = true -- conver tabs to spaces

vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})
