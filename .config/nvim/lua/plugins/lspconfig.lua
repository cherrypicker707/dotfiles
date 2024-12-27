return {
    'neovim/nvim-lspconfig',
    name = 'lspconfig',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
    },
    config = function()
        local lspconfig = require('lspconfig')
        local cmp_nvim_lsp = require('cmp_nvim_lsp')

        lspconfig.clangd.setup({
            cmd = { vim.fn.expand('~/.local/share/nvim/mason/bin/clangd') },
            capabilities = cmp_nvim_lsp.default_capabilities(),
        })
    end,
}
