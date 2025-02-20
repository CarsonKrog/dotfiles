require 'core.keymaps'
require 'core.options'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.mini-files',
    require 'plugins.neo-tree',
    require 'plugins.colorscheme',
    require 'plugins.which-key',
    require 'plugins.alpha',
    require 'plugins.telescope',
    require 'plugins.treesitter',
    require 'plugins.indent-line',
    require 'plugins.lsp-autocomplete',
    require 'plugins.autopairs',
    require 'plugins.lualine',
--    require 'plugins.tabline',
})
