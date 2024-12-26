return {
    'mfussenegger/nvim-dap',
    dependencies = {
        'williamboman/mason.nvim',
        'jay-babu/mason-nvim-dap.nvim',
        'rcarriga/nvim-dap-ui',
        'nvim-neotest/nvim-nio',
    },
    config = function()
        require('mason-nvim-dap').setup({ handlers = {} })

        local dap, dapui = require('dap'), require('dapui')
        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint)
        vim.keymap.set('n', '<leader>dc', dap.continue)
    end,
}
