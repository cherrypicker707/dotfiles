return {
    'williamboman/mason-lspconfig.nvim',
    name = 'mason_lspconfig',
    dependencies = {
        'williamboman/mason.nvim',
    },
    config = function()
        local mason_lspconfig = require('mason-lspconfig')

        mason_lspconfig.setup({
            ensure_installed = { 'clangd' },
        })
    end,
}
