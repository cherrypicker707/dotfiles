return {
    'stevearc/conform.nvim',
    name = 'conform',
    dependencies = {
        'williamboman/mason.nvim',
    },
    config = function()
        local conform = require('conform')

        conform.setup({
            formatters = {
                ['clang-format'] = {
                    prepend_args = { '--style={BasedOnStyle: Microsoft, ColumnLimit: 65536}', '--sort-includes=false' },
                },
            },
            formatters_by_ft = {
                lua = { 'stylua' },
                c = { 'clang-format' },
                cpp = { 'clang-format' },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = 'fallback',
            },
        })
    end,
}
