return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function()
        local ok, telescope = pcall(require, "telescope")
        if not ok then return end

        local fb_actions = telescope.extensions.file_browser.actions

        telescope.setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_config = { horizontal = { prompt_position = "top" } },
                prompt_prefix = "   ",
                selection_caret = " ",
            },
            extensions = {
                file_browser = {
                    hidden = {
                        file_browser = true,
                        folder_browser = true,
                    },
                    hijack_netrw = true,
                    mappings = {
                        ["n"] = {
                            ["a"] = fb_actions.create,
                            ["r"] = fb_actions.rename,
                            ["d"] = fb_actions.remove,
                            ["m"] = fb_actions.move,
                            ["c"] = fb_actions.copy,
                        },
                    },
                },
            },
        })

        telescope.load_extension("file_browser")
    end,
}
