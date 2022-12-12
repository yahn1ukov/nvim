vim.keymap.set("n", "<S-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<S-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<S-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<S-l>", "<C-w>l", { noremap = true, silent = true })

vim.keymap.set("n", "<S-s>", "<C-w>s", { noremap = true, silent = true })
vim.keymap.set("n", "<S-v>", "<C-w>v", { noremap = true, silent = true })

vim.keymap.set("n", "<Tab>", "<CMD>BufferNext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-Tab>", "<CMD>BufferPrevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<S-q>", "<CMD>BufferClose<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<S-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<S-f>", "<CMD>Telescope find_files<CR>", { noremap = true, silent = true })
