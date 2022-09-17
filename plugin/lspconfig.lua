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

lspconfig.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true)
            }
        }
    }
}

lspconfig.tsserver.setup {
    on_attach = on_attach,
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
    capabilities = capabilities
}

lspconfig.csharp_ls.setup {
    on_attach = on_attach,
    cmd = { 'csharp-ls' },
    filetypes = { 'cs' },
    capabilities = capabilities
}

lspconfig.html.setup {
    on_attach = on_attach,
    cmd = { 'vscode-html-language-server', '--stdio' },
    filetypes = { 'html' },
    capabilities = capabilities
}

lspconfig.cssls.setup {
    on_attach = on_attach,
    cmd = { 'vscode-css-language-server', '--stdio' },
    filetypes = { 'css', 'scss', 'less' },
    capabilities = capabilities
}

lspconfig.dockerls.setup {
    on_attach = on_attach,
    cmd = { 'docker-langserver', '--stdio' },
    filetypes = { 'dockerfile' },
    capabilities = capabilities
}

lspconfig.sqlls.setup {
    on_attach = on_attach,
    cmd = { 'sql-language-server', 'up', '--method', 'stdio' },
    filetypes = { 'sql', 'mysql' },
    capabilities = capabilities
}

lspconfig.jsonls.setup {
    on_attach = on_attach,
    cmd = { 'vscode-json-language-server', '--stdio' },
    filetypes = { 'json' },
    capabilities = capabilities
}

lspconfig.lemminx.setup {
    on_attach = on_attach,
    cmd = { 'lemminx' },
    filetypes = { 'xml', 'xsd', 'xsl', 'xslt', 'svg' },
    capabilities = capabilities
}

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
