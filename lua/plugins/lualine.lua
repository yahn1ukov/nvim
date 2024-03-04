return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local ok, lualine = pcall(require, "lualine")
        if not ok then return end

        lualine.setup({
            options = { theme = "tokyonight" },
            sections = {
                lualine_b = {
                    { "branch", icon = " " },
                    { "diff", symbols = { added = " ", modified = " ", removed = " " } },
                    {
                        "diagnostics",
                        sources = { "nvim_diagnostic" },
                        symbols = { error = "󰅙 ", warn = " ", info = " ", hint = "󰌵 " },
                    },
                },
                lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
            },
        })
    end,
}
