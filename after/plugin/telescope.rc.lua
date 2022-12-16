local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.setup {
    defaults = {
        layout_config = {
            horizontal = {
                prompt_position = "top",
            }
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        file_ignore_patterns = { 'node_modules', '.git', 'dist', 'obj', 'bin' }
    },
    extensions = { file_browser = { hijack_netrw = true } }
}
