local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
    ensure_installed = {
        'lua',
        'c_sharp',
        'javascript',
        'typescript',
        'html',
        'css',
        'scss',
        'dockerfile',
        'json',
        'http'
    },
    highlight = {
        enable = true
    },
    auto_pairs = {
        enable = true
    }
}
