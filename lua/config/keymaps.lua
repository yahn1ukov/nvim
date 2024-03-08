local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<S-h>", "<C-w>h", opts)
vim.keymap.set("n", "<S-j>", "<C-w>j", opts)
vim.keymap.set("n", "<S-k>", "<C-w>k", opts)
vim.keymap.set("n", "<S-l>", "<C-w>l", opts)
vim.keymap.set("n", "<S-s>", "<C-w>s", opts)
vim.keymap.set("n", "<S-v>", "<C-w>v", opts)
vim.keymap.set("n", "<S-q>", "<CMD>bd<CR>", opts)
