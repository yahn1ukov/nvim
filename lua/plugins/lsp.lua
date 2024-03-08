return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  config = function()
    local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
    local ok_cmp, cmp = pcall(require, "cmp_nvim_lsp")
    if not ok_lspconfig or not ok_cmp then return end

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

    local vim_capabilities = vim.lsp.protocol.make_client_capabilities()
    local cmp_capabilities = cmp.default_capabilities(vim_capabilities)

    vim.diagnostic.config({
      virtual_text = { spacing = 2 },
      float = { header = "" },
    })

    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      capabilities = cmp_capabilities,
      settings = { Lua = { diagnostics = { globals = { "vim" } } } },
    })

    lspconfig.clangd.setup({
      on_attach = on_attach,
      capabilities = cmp_capabilities,
    })
  end,
}
