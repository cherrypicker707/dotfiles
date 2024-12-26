-- Configuration for 'nvim-treesitter' Neovim plugin.

return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        require('nvim-treesitter.configs').setup({
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
