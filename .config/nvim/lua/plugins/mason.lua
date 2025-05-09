return {
    'williamboman/mason.nvim',
    name = 'mason',
    config = function()
        local mason = require('mason')

        mason.setup({
            ui = {
                border = 'single',
                width = 0.5,
                height = 0.5,
                icons = {
                    package_installed = '✓',
                    package_pending = '-',
                    package_uninstalled = '✕',
                },
            },
        })

        vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>')
    end
}
