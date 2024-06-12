return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "BufReadPost",
  config = function()
    local treesitter = require("nvim-treesitter")

    treesitter.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "javascript",
        "typescript",
        "vue",
        "sql",
        "json",
        "yaml",
        "make",
        "dockerfile",
        "proto",
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
      },
    })
  end,
}
