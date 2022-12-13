local status_cmp, cmp = pcall(require, 'cmp')
if (not status_cmp) then return end

local status_lspkind, lspkind = pcall(require, 'lspkind')
if (not status_lspkind) then return end

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        completion = { border = 'single' },
        documentation = { border = 'single' },
    },
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end,
        ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end,
        ['<Esc>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'nvim_lua' },
    },
    experimental = { ghost_text = true },
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol_text',
            maxwidth = 50,
            ellipsis_char = '...',
            menu = ({
                nvim_lsp = '[LSP]',
                nvim_lua = '[Lua]',
                path = '[Path]',
                buffer = '[Buffer]',
            })
        })
    }
})
