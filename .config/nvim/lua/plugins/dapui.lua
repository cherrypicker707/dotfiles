return {
    'rcarriga/nvim-dap-ui',
    name = 'dap_ui',
    dependencies = {
        'mfussenegger/nvim-dap',
    },
    config = function()
        local dapui = require('dapui')
        local dap = require('dap')

        dapui.setup({
            controls = { enabled = false },
            icons = {
                collapsed = '-',
                current_frame = 'x',
                expanded = 'v',
            },
        })

        dap.listeners.after.event_initialized['dapui_config'] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated['dapui_config'] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited['dapui_config'] = function()
            dapui.close()
        end
    end,
}
