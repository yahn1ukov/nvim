local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
    ensure_installed = {
        "lua",
        "c",
        "cpp",
        "python",
        "go",
        "rust",
        "help",
        "c_sharp",
        "javascript",
        "typescript",
        "bash",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    auto_pairs = { enable = true }
}

