return {
    'nvim-treesitter/nvim-treesitter',
    name = 'treesitter',
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup({
            ensure_installed = {
                'asm',
                'bash',
                'c',
                'css',
                'cmake',
                'cpp',
                'desktop',
                'fish',
                'glsl',
                'html',
                'json',
                'jsonc',
                'lua',
                'latex',
                'toml',
            },
            highlight = {
                enable = true,
            },
            incremental_selection = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
