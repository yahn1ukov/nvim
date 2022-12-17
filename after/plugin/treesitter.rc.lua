local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
    ensure_installed = {
        "lua",
        "help",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    auto_pairs = { enable = true }
}

