return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<S-f>", "<CMD>Telescope find_files<CR>" },
    { "<S-g>", "<CMD>Telescope live_grep<CR>" },
    { "<S-b>", "<CMD>Telescope buffers<CR>" },
    { "<S-e>", "<CMD>Telescope diagnostics<CR>" },
  },
  opts = {
    defaults = {
      initial_mode = "normal",
      border = false,
      sorting_strategy = "ascending",
      layout_config = { horizontal = { prompt_position = "top" } },
      preview = false,
    },
  },
}
