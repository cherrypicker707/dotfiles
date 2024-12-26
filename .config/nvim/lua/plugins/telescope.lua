-- Configuration for 'telescope.nvim' Neovim plugin.

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    tag = '0.1.8',
    config = function()
        require('telescope').setup({
            defaults = {
                layout_strategy = 'vertical',
                layout_config = {
                    height = 0.5,
                    width = 0.5,
                },
                borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└' },
                results_title = 'results',
            },
        })

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files)
        vim.keymap.set('n', '<leader>g', builtin.git_files)
    end,
}
