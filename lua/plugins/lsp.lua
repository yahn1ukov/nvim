return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
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
      vim.keymap.set("n", "<C-f>", function() vim.lsp.buf.format({ async = true }) end, opts)
      vim.keymap.set("n", "<C-h>", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<C-a>", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "<C-r>", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<C-n>", vim.diagnostic.goto_next, opts)
      vim.keymap.set("n", "<C-p>", vim.diagnostic.goto_prev, opts)
      vim.keymap.set("n", "<C-d>", vim.lsp.buf.definition, opts)
    end

    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    mason.setup()

    mason_lspconfig.setup({
      ensure_installed = {
        "gopls",
        "tsserver",
        "lua_ls",
        "volar",
        "dockerls",
      },
      handlers = {
        function(server)
          lspconfig[server].setup({
            on_attach = on_attach,
            capabilities = capabilities,
          })
        end,
        ["lua_ls"] = function()
          lspconfig.lua_ls.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
              Lua = {
                workspace = {
                  checkThirdParty = false,
                },
                completion = {
                  callSnippet = "Replace",
                },
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      },
    })
  end,
}
