-- Configuration for mason_lspconfig Plugin

return {
    'williamboman/mason-lspconfig.nvim',
    name = 'mason_lspconfig',
    dependencies = {
        'williamboman/mason.nvim'
    },
    config = function()
        local mason_lspconfig = require('mason-lspconfig')

        mason_lspconfig.setup()
    end
}
