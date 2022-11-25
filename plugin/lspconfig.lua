local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
end

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local opts = { noremap = true, silent = true }
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
end

protocol.CompletionItemKind = {
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'ﰮ',
    '',
    '',
    '',
    '',
    '',
    '',
    '﬌',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'ﬦ',
    ''
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.sumneko_lua.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)
        enable_format_on_save(client, bufnr)
    end,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' },
            },

            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
        },
    },
}

lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.csharp_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.html.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.tailwindcss.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    update_in_insert = false,
    virtual_text = { spacing = 4, prefix = "●" },
    severity_sort = true,
}
)

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
    virtual_text = {
        prefix = '●'
    },
    update_in_insert = true,
    float = {
        source = "always",
    },
})
