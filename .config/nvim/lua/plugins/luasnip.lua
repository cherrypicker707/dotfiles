-- Configuation for luasnip Plugin

return {
    'L3MON4D3/LuaSnip',
    name = 'luasnip',
    version = 'v2.*',
    config = function()
        local luasnip = require('luasnip')

        luasnip.config.setup({})
    end,
    build = 'make install_jsregexp'
}
