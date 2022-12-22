local status, mason_lspconfig = pcall(require, 'mason-lspconfig')
if (not status) then return end

mason_lspconfig.setup({
    ensure_installed = {
        "sumneko_lua",
        "tsserver",
        "csharp_ls",
    },
    automatic_installation = false
})
