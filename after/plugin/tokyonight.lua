local status, tokyonight = pcall(require, 'tokyonight')
if (not status) then return end

tokyonight.setup({
    style = 'moon',
    styles = {
        comments = { italic = false },
        keywords = { italic = false }
    },
    lualine_bold = true
})

vim.cmd [[ colorscheme tokyonight ]]
