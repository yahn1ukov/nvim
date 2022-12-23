local status, tree = pcall(require, 'nvim-tree')
if (not status) then return end

tree.setup {
    view = { hide_root_folder = true },
    renderer = {
        highlight_git = true,
        indent_markers = { enable = true }
    },
    diagnostics = {
        enable = true,
        icons = {
            error = "",
            warning = "",
            info = "",
            hint = ""
        }
    }
}

