-- set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'x', '"_x', opts)

-- window management
vim.keymap.set('n', '<leader>s\\', '<C-w>v', opts) -- split vertical
vim.keymap.set('n', '<leader>s-', '<C-w>s', opts) -- split horizontal
vim.keymap.set('n', '<leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<leader>sx', ':close<CR>', opts) -- close split

-- resize with arrows
vim.keymap.set('n', '<UP>', ':resize -5<CR>', opts)
vim.keymap.set('n', '<DOWN>', ':resize +5<CR>', opts)
vim.keymap.set('n', '<LEFT>', ':vertical resize -5<CR>', opts)
vim.keymap.set('n', '<RIGHT>', ':vertical resize +5<CR>', opts)

-- navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts) -- up
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts) -- down
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts) -- left
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts) -- right

-- tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<Tab>', ':tabn<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':tabp<CR>', opts)

-- open neotree
vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', opts)

-- open mini files
vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', opts)

-- open start page 
vim.keymap.set('n', '<leader>d', ':Alpha<CR>', opts)

