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
        'sql',
        'json'
    },
    highlight = {
        enable = true
    },
    autotag = {
        enable = true
    },
    auto_pairs = {
        enable = true
    }
}
