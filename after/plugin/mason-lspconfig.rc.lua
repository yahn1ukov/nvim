local status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason_lspconfig.setup({
    ensure_installed = {
        "sumneko_lua",
        "rust_analyzer",
        "pyright",
        "clangd",
        "gopls",
        "csharp_ls",
        "tsserver",
        "bashls",
    },
    automatic_installation = false
})
