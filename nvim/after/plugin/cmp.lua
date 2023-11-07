local cmp = require('cmp')
local cmp_action = require('ls-zero').cmp_action()


cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- Enter key to confirm the completion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion menu
        ['<C-u>'] = cmp_action.scroll_docs(-4),
        ['<C-d>'] = cmp_action.scroll_docs(4),
    })
})


