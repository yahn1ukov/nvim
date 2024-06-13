return {
    "neovim/nvim-lspconfig",
    event = "BufReadPost",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_lsp = require("cmp_nvim_lsp")
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        local on_attach = function(_, buffer)
            local opts = { noremap = true, silent = true, buffer = buffer }
            vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format({ async = true, lsp_fallback = true }) end, opts)
            vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "<C-a>", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, opts)
            vim.keymap.set("n", "<C-n>", vim.diagnostic.goto_next, opts)
            vim.keymap.set("n", "<C-p>", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "<C-d>", vim.lsp.buf.definition, opts)
        end

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = vim.tbl_deep_extend("force", capabilities, cmp_lsp.default_capabilities())

        local servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = {
                            checkThirdParty = false,
                        },
                        diagnostics = {
                            globals = { "vim" },
                        },
                    },
                },
            },
        }

        local ensure_installed = vim.tbl_keys(servers or {})

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = ensure_installed,
            handlers = {
                function(name)
                    local server = servers[name] or {}
                    server.on_attach = on_attach
                    server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
                    lspconfig[name].setup(server)
                end,
            },
        })
    end,
}
