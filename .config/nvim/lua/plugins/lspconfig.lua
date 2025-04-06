-- Configuration for lspconfig Plugin

return {
    'neovim/nvim-lspconfig',
    name = 'lspconfig',
    dependencies = {
        'williamboman/mason-lspconfig.nvim'
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_lsp = require('cmp_nvim_lsp')

        lspconfig.clangd.setup({
            capabilities = cmp_lsp.default_capabilities(),
            cmd = { 'clangd' },
            filetypes = { 'c', 'cpp' }
        })
    end
}
