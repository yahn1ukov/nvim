local status, lspsaga = pcall(require, 'lspsaga');
if (not status) then return end

lspsaga.init_lsp_saga({
    code_action_icon = "",
});

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-e>', '<CMD>Lspsaga show_line_diagnostics<CR>', opts)
vim.keymap.set('n', '<C-p>', '<CMD>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', '<C-n>', '<CMD>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', '<C-h>', '<CMD>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', '<C-r>', '<CMD>Lspsaga rename<CR>', opts)
vim.keymap.set('n', '<C-space>', '<CMD>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('n', '<C-a>', '<CMD>Lspsaga code_action<CR>', opts)
