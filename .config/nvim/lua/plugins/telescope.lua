-- Configuration for telescope Plugin

return {
    'nvim-telescope/telescope.nvim',
    name = 'telescope',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
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
        vim.keymap.set('n', '<leader>t', builtin.treesitter)
        vim.keymap.set('n', '<leader>r', builtin.live_grep)
    end,
    tag = '0.1.8'
}
