return {
    'L3MON4D3/LuaSnip',
    name = 'luasnip',
    build = 'make install_jsregexp',
    config = function()
        local luasnip = require('luasnip')

        luasnip.config.setup({})
    end,
}
