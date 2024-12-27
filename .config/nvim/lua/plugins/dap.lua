return {
    'mfussenegger/nvim-dap',
    name = 'dap',
    dependencies = {
        'jay-babu/mason-nvim-dap.nvim',
        'nvim-neotest/nvim-nio',
    },
    config = function()
        local dap = require('dap')

        vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
        vim.keymap.set('n', '<leader>d', dap.continue)
        vim.keymap.set('n', '<leader>s', dap.step_over)
        vim.keymap.set('n', '<leader>t', dap.terminate)
    end,
}
