vim.g.mapleader = " "

local opts = {
    number = true,
    autoindent = true,
    smartindent = true,
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    softtabstop = 4,
    wrap = false,
    backup = false,
    swapfile = false,
    mouse = "a",
    smartcase = true,
    ignorecase = true,
    scrolloff = 10,
    colorcolumn = "120",
    completeopt = "menu,menuone,noselect",
}

for opt, val in pairs(opts) do
    vim.o[opt] = val
end

vim.opt.clipboard:append({ "unnamed", "unnamedplus" })
