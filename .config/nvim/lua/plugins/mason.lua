return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        'saadparwaiz1/cmp_luasnip',
        'stevearc/conform.nvim',
    },
    config = function()
        require('mason').setup({
            ui = {
                border = 'single',
                width = 0.5,
                height = 0.5,
                icons = {
                    package_installed = 'v',
                    package_pending = '-',
                    package_uninstalled = 'x',
                },
            },
        })

        require('mason-lspconfig').setup({
            'clangd',
        })

        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        require('lspconfig').clangd.setup({
            cmd = { vim.fn.expand('~/.local/share/nvim/mason/bin/clangd') },
            capabilities = capabilities,
        })

        local luasnip = require('luasnip')

        vim.keymap.set('i', '<C-k>', function()
            luasnip.expand()
        end)

        luasnip.add_snippets('cpp', {
            luasnip.snippet('snip', {
                luasnip.text_node({
                    '#include <bits/stdc++.h>',
                    '',
                    'typedef int ret_t;',
                    'typedef long long int int_t;',
                    'typedef std::vector<int_t> vecint_t;',
                    'typedef std::vector<vecint_t> vecvecint_t;',
                    'typedef std::pair<int_t, int_t> pairint_t;',
                    'typedef std::vector<pairint_t> vecpairint_t;',
                    'typedef std::vector<vecpairint_t> vecvecpairint_t;',
                    '',
                    'ret_t main()',
                    '{',
                    '    std::ios_base::sync_with_stdio(0);',
                    '    std::cin.tie(0);',
                    '',
                    '    return 0;',
                    '}',
                }),
            }),
        })

        local cmp = require('cmp')

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            completion = { completeopt = 'menu,menuone,noinsert' },
            mapping = cmp.mapping.preset.insert({
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'path' },
            }),
        })

        require('conform').setup({
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
