-- Configuration for Catppuccin Plugin

return {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
        vim.cmd('colorscheme catppuccin-mocha')
    end,
}
