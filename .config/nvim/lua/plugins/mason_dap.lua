return {
    'jay-babu/mason-nvim-dap.nvim',
    name = 'mason_dap',
    dependencies = {
        'williamboman/mason.nvim',
    },
    config = function()
        local mason_dap = require('mason-nvim-dap')

        mason_dap.setup({
            handlers = {},
            ensure_installed = { 'codelldb' },
        })
    end,
}
