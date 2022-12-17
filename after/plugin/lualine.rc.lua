local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
    options = { theme = 'dracula' },
    sections = {
        lualine_b = {
            { 'branch', icon = ' ' },
            { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' } },
            { 'diagnostics', sources = { "nvim_diagnostic" },
                symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } }
        },
        lualine_x = { 'encoding', { 'fileformat', symbols = { unix = ' ' } }, 'filetype' },
    }
}

