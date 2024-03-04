return {
    "kyazdani42/nvim-web-devicons",
    config = function()
        local ok, web_devicons = pcall(require, "nvim-web-devicons")
        if not ok then return end

        web_devicons.setup()
    end,
}
