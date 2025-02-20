--return {
--    'nvimdev/dashboard-nvim',
--    event = 'VimEnter',
--    config = function()
--        require('dashboard').setup({
--            theme = 'hyper',
--            config = {
--                header = {
--                    [[   .   *   ..  . *  *   ]], 
--                    [[*  * @()Ooc()*   o  .   ]], 
--                    [[    (Q@*0CG*O()  ___    ]], 
--                    [[   |\_________/|/ _ \   ]], 
--                    [[   |  |  |  |  | / | |  ]], 
--                    [[   |  |  |  |  | | | |  ]], 
--                    [[   |  |  |  |  | | | |  ]], 
--                    [[   |  |  |  |  | | | |  ]], 
--                    [[   |  |  |  |  | | | |  ]], 
--                    [[   |  |  |  |  | \_| |  ]], 
--                    [[   |  |  |  |  |\___/   ]], 
--                    [[   |\_|__|__|_/|        ]], 
--                    [[    \_________/         ]], 
--                    [[                        ]], 
--                    [[                        ]], 
--                    [[                        ]], 
--                },
--            },
--        })
--    end,
--    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
return {
    {
        "goolord/alpha-nvim",
        -- dependencies = { 'echasnovski/mini.icons' },
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local startify = require("alpha.themes.startify")

            startify.section.header.val = {
                    [[                        ]],
                    [[   .   *   ..  . *  *   ]],
                    [[*  * @()Ooc()*   o  .   ]],
                    [[    (Q@*0CG*O()  ___    ]],
                    [[   |\_________/|/ _ \   ]],
                    [[   |  |  |  |  | / | |  ]],
                    [[   |  |  |  |  | | | |  ]],
                    [[   |  |  |  |  | | | |  ]],
                    [[   |  |  |  |  | | | |  ]],
                    [[   |  |  |  |  | | | |  ]],
                    [[   |  |  |  |  | \_| |  ]],
                    [[   |  |  |  |  |\___/   ]],
                    [[   |\_|__|__|_/|        ]],
                    [[    \_________/         ]],
                    [[                        ]],
            }

            -- available: devicons, mini, default is mini
            -- if provider not loaded and enabled is true, it will try to use another provider
            startify.file_icons.provider = "devicons"
            require("alpha").setup(
                startify.config
            )
        end,
    },
}
