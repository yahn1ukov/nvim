local opt = vim.opt

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.spell = true

opt.number = true
opt.relativenumber = true

opt.cursorline = true
opt.background = 'dark'
opt.laststatus = 2
opt.title = true
opt.mouse = 'a'
opt.termguicolors = true

opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true
opt.ignorecase = true

opt.backup = false
opt.swapfile = false

opt.backspace = { 'start', 'eol', 'indent' }

opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.expandtab = true
opt.smarttab = true
opt.breakindent = true

opt.wrap = true
opt.linebreak = true

opt.list = true
opt.listchars = { tab = '|·', trail = '·' }

opt.completeopt = { 'menuone', 'noinsert', 'noselect' }

local cmd = vim.cmd

cmd('syntax on')
cmd('filetype indent on')
cmd('filetype plugin indent on')
