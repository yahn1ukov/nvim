return {
    "folke/tokyonight.nvim",
    config = function()
        local ok, tokyonight = pcall(require, "tokyonight")
        if not ok then return end

        tokyonight.setup()

        vim.cmd.colorscheme("tokyonight")
    end,
}
