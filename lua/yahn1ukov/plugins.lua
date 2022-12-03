local status, packer = pcall(require, 'packer')
if (not status) then
    print('Packer is not installed')
    return
end

vim.cmd [[ packadd packer.nvim ]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'

    use 'kyazdani42/nvim-web-devicons'

    use 'Mofiqul/dracula.nvim'

    use 'nvim-lualine/lualine.nvim'

    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/nvim-cmp'

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    use 'glepnir/lspsaga.nvim'
    use 'folke/lsp-colors.nvim'

    use 'L3MON4D3/LuaSnip'

    use 'kyazdani42/nvim-tree.lua'

    use 'nvim-telescope/telescope.nvim'
    use 'nvim-telescope/telescope-file-browser.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
    }

    use 'romgrk/barbar.nvim'

    use '907th/vim-auto-save'
    use 'jiangmiao/auto-pairs'
    use 'norcalli/nvim-colorizer.lua'
    use 'terrortylor/nvim-comment'

    use 'dinhhuy258/git.nvim'
    use 'lewis6991/gitsigns.nvim'
end)
