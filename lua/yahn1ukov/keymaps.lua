local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map('n', '<S-h>', '<C-w>h')
map('n', '<S-j>', '<C-w>j')
map('n', '<S-k>', '<C-w>k')
map('n', '<S-l>', '<C-w>l')

map('n', '<S-s>', '<C-w>s')
map('n', '<S-v>', '<C-w>v')

map('n', '<S-n>', ':NvimTreeToggle<CR>')

map('n', '<S-f>', '<CMD>Telescope find_files<CR>')

map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')

map('n', '<S-t>', ':TagbarToggle<CR>')

map('i', '<S-d>', '<CMD>Lspsaga diagnostic_jump_next<CR>')
map('i', '<S-h>', '<CMD>Lspsaga hover_doc<CR>')
map('i', '<S-f>', '<CMD>Lspsaga lsp_finder<CR>')
