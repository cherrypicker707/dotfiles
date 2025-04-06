-- Configuration for cmp Plugin

return {
    'hrsh7th/nvim-cmp',
    name = 'cmp',
    dependencies = {
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
    },
    config = function()
        local cmp = require('cmp')
        local luansip = require('luasnip')

        cmp.setup({
            snippet = {
                expand = function(arguments)
                    luasnip.lsp_expand(arguments.body)
                end
            },
            window = {
                completion = {
                    border = { '┌', '─', '┐', '│', '┘', '─', '└',  '│' }
                }
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            }),
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'path' },
            },
        })
    end
}
