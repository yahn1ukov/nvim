return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        sorting_strategy = "ascending",
        preview = false,
        layout_config = {
          horizontal = {
            prompt_position = "top",
          },
        },
        initial_mode = "normal",
      },
      extensions = {
        file_browser = {
          hidden = {
            file_browser = true,
            folder_browser = true,
          },
        },
      },
    })

    telescope.load_extension("file_browser")
  end,
}
