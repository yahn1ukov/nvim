local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
    ensure_installed = {
        'lua'
    },
    highlight = {
        enable = true
    },
    auto_pairs = {
        enable = true
    }
}
