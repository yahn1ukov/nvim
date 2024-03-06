return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local ok, telescope = pcall(require, "telescope")
    if not ok then return end

    local actions = telescope.extensions.file_browser.actions

    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        layout_config = { horizontal = { prompt_position = "top" } },
        prompt_prefix = "   ",
        selection_caret = " ",
        initial_mode = "normal",
        preview = false,
      },
      extensions = {
        file_browser = {
          hidden = {
            file_browser = true,
            folder_browser = true,
          },
          display_stat = { date = true },
          hijack_netrw = true,
          mappings = {
            ["n"] = {
              ["a"] = actions.create,
              ["r"] = actions.rename,
              ["d"] = actions.remove,
              ["m"] = actions.move,
              ["c"] = actions.copy,
            },
          },
        },
      },
    })

    telescope.load_extension("file_browser")
  end,
}
