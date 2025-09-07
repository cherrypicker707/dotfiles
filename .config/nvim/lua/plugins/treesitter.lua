-- Configuration for treesitter Plugin

return {
    'nvim-treesitter/nvim-treesitter',
    name = 'treesitter',
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup({
            -- ensure_installed = 'all',
            highlight = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
            },
            indent = {
                enable = true,
            }
        })
    end
}
