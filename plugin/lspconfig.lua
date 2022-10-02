local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[ augroup Format ]]
        vim.api.nvim_command [[ autocmd! * <buffer> ]]
        vim.api.nvim_command [[ autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
        vim.api.nvim_command [[ augroup END ]]
    end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
                checkThirdParty = false
            }
        }
    }
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

lspconfig.dockerls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lspconfig.sqlls.setup {
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
