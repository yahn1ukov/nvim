local status, git = pcall(require, 'git')
if (not status) then return end

git.setup({
    keymaps = {
        blame = "gb",
        quit_blame = "gq",
        blame_commit = "<CR>",
        diff = "gd",
        diff_close = "gq",
    },
})

