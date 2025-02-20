return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            {'nvim-lua/plenary.nvim'},
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function()
            require('telescope').setup{
                pickers = {
                    find_files = {
                        --theme = "ivy"
                    }
                }
            }

            -- Key mappings
            vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = 'Find Files' })
            vim.keymap.set('n', '<leader>nc', function()
                require('telescope.builtin').find_files {
                    cwd = vim.fn.stdpath("config")
                } 
            end,
            { desc = 'nvim config files' })
        end
    }
}
