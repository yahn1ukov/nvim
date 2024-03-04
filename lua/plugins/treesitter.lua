return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local ok, treesitter = pcall(require, "nvim-treesitter.configs")
        if not ok then return end

        treesitter.setup({
            ensure_installed = {
                "c",
                "cpp",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "rust",
                "toml",
            },
            sync_install = false,
            auto_install = false,
            highlight = { enable = true },
            autotag = { enable = true },
            indent = { enable = true },
        })
    end,
}
