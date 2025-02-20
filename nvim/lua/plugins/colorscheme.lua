--return {
--    'AlexvZyl/nordic.nvim',
--    lazy = false,
--    priority = 1000,
--    config = function()
--        require('nordic').load()
--    end
--}

-- Lazy
return {
    {
        'uloco/bluloco.nvim',
        lazy = false,
        priority = 1000,
        dependencies = { 'rktjmp/lush.nvim' },
        config = function()
            require('bluloco').load()
        end,
    },
}
