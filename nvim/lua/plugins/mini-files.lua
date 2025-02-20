return {
    'echasnovski/mini.files',
    version = false,  -- This ensures you get the latest version
    config = function()
        -- Setup mini.files
        require("mini.files").setup({
            options = {
                -- Ensure the 'buftype' is not set to anything that prevents editing
                buftype = "normal",  -- Set the buffer type to 'normal' for editing
            },
        })
    end
}

