local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

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
        prefix = '●',
        spacing = 2,
        source = false,
    },
    float = {
        source = false,
        focusable = false,
        header = ""
    },
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-e>', '<CMD>lua vim.diagnostic.open_float()<CR>', opts)
vim.keymap.set('n', '<C-p>', '<CMD>lua vim.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', '<C-n>', '<CMD>lua vim.diagnostic.goto_next()<CR>', opts)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', '<C-h>', '<CMD>lua vim.lsp.buf.hover()<CR>', bufopts)
    vim.keymap.set('n', '<C-r>', '<CMD>lua vim.lsp.buf.rename()<CR>', bufopts)
    vim.keymap.set('n', '<C-d>', '<CMD>lua vim.lsp.buf.definition()<CR>', bufopts)
    vim.keymap.set('n', '<C-space>', '<CMD>lua vim.lsp.buf.declaration()<CR>', bufopts)
    vim.keymap.set('n', '<C-i>', '<CMD>lua vim.lsp.buf.implementation()<CR>', bufopts)
    -- vim.keymap.set('n', '<C-s>', '<CMD>lua vim.lsp.buf.signature_help()<CR>', bufopts) ???
    vim.keymap.set('n', '<C-a>', '<CMD>lua vim.lsp.buf.code_action()<CR>', bufopts)
    vim.keymap.set('n', '<C-f>', '<CMD>lua vim.lsp.buf.formatting()<CR>', bufopts)
    vim.keymap.set('n', '<C-l>', '<CMD>lua vim.lsp.buf.references()<CR>', bufopts)
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

local servers = { "pyright", "clangd", "rust_analyzer", "gopls", "csharp_ls", "tsserver", "bashls" }

for _, server in pairs(servers) do
    lspconfig[server].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        flags = flags
    }
end