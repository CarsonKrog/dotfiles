return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x", -- Use the stable version
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- Optional, for file icons
        "MunifTanjim/nui.nvim",
    },
    config = function()
        vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]]) -- Prevent conflicts
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true,          -- Make hidden items visible by default
                    hide_dotfiles = false,   -- Do not hide dotfiles
                    hide_gitignored = true,  -- Optionally hide files ignored by .gitignore
                }
            },
            window = {
                mappings = {
                    ['p'] = 'navigate_up'
                }
            },
            popup_border_style = "rounded",
        })
    end,
}
