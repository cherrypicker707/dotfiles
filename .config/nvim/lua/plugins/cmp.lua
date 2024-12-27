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
        local luasnip = require('luasnip')

        cmp.setup({
            snippet = {
                expand = function(arguments)
                    luasnip.lsp_expand(arguments.body)
                end,
            },
            completion = { completeopt = 'menu,menuone,noinsert' },
            mapping = cmp.mapping.preset.insert({
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm(),
            }),
            sources = cmp.config.sources({
                { name = 'luasnip' },
                { name = 'nvim_lsp' },
                { name = 'path' },
            }),
        })
    end,
}
