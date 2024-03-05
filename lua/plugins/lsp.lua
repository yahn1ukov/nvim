return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local ok_mason, mason = pcall(require, "mason")
        local ok_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
        local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
        local ok_cmp_lsp, cmp_lsp = pcall(require, "cmp_nvim_lsp")
        if not ok_mason or not ok_mason_lspconfig or not ok_lspconfig or not ok_cmp_lsp then return end

        mason.setup()

        mason_lspconfig.setup({ ensure_installed = { "lua_ls", "clangd" } })

        local on_attach = function(_, bufnr)
            local opts = { noremap = true, silent = true, buffer = bufnr }

            vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<C-n>", vim.diagnostic.goto_next, opts)
            vim.keymap.set("n", "<C-p>", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "<C-a>", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<C-d>", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "<C-l>", vim.lsp.buf.references, opts)
            vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, opts)
        end

        local capabilities = cmp_lsp.default_capabilities()

        local signs = { Error = "󰅙", Warn = "", Hint = "󰌵", Info = "" }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        lspconfig.lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = { Lua = { diagnostics = { globals = { "vim" } } } },
        })

        lspconfig.clangd.setup({
            on_attach = on_attach,
            capabilities = capabilities,
        })
    end,
}
