local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)

    -- Package management
    use 'wbthomason/packer.nvim'

    -- Theme
    use 'Mofiqul/dracula.nvim'

    -- Statusline
    use 'nvim-lualine/lualine.nvim'

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Utilities
    use '907th/vim-auto-save'
    use 'jiangmiao/auto-pairs'
    use 'terrortylor/nvim-comment'
    use 'akinsho/toggleterm.nvim'

    -- Tabline
    use 'romgrk/barbar.nvim'

    -- Sidebar
    use 'kyazdani42/nvim-tree.lua'

    -- Finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- LSP support
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'glepnir/lspsaga.nvim'

    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'

    -- DLC for cmp
    use 'onsails/lspkind-nvim'

    -- Snippets
    use 'L3MON4D3/LuaSnip'

    -- Git
    use 'dinhhuy258/git.nvim'
    use 'lewis6991/gitsigns.nvim'

end)
