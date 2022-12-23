local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
    underline = true,
    signs = true,
    severity_sort = true,
    update_in_insert = false,
    virtual_text = {
        spacing = 2,
    },
})

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', '<C-d>', '<CMD>lua vim.lsp.buf.definition()<CR>', bufopts)
    vim.keymap.set('n', '<C-f>', '<CMD>lua vim.lsp.buf.formatting()<CR>', bufopts)
end

local flags = { debounce_text_changes = 120 }

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig["sumneko_lua"].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = flags,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
}

-- NOTE: flutter-tools does not depend on nvim-lspconfig. 
-- The two can co-exist but please ensure you do NOT configure dartls using lspconfig. 
-- It will be automatically set up by this plugin instead.

local servers = { "tsserver", "csharp_ls" }

for _, server in pairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = flags
    }
end
