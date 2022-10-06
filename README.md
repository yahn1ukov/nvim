# My Neovim configuration (.NET/React)

## Languages and technologies

- `C#`
- `JavaScript / Typescript`
- `HTML`
- `CSS / SCSS / Tailwind CSS`
- `Docker`
- `SQL`
- `JSON`
- `Lua`

## Plugins (Total: `27`):

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [Mofiqul/dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [onsails/lspkind-nvim](https://github.com/onsails/lspkind.nvim)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [glepnir/lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [907th/vim-auto-save](https://github.com/907th/vim-auto-save)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment)
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [preservim/tagbar](https://github.com/preservim/tagbar)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

## :exclamation: Requirements :exclamation:

- Packer:
  - Macos, Linux: `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim`
  - Windows: `git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"`
- Nerd Font (Hack Nerd Font Mono):
  - Macos: `brew tap homebrew/cask-fonts` | `brew install --cask font-hack-nerd-font`
  - Windows, Linux: [Download .zip](https://www.nerdfonts.com/font-downloads)
- Ctags: 
  - Macos: `brew install ctags`
  - Windows: `scoop install ctags`
  - Linux (Ubuntu): `sudo apt install ctags` or `sudo apt install universal-ctags`
- Gcc: 
  - Macos: `brew install gcc`
  - Windows: `scoop install gcc`
  - Linux (Ubuntu): `sudo apt install gcc`
- Npm packages: 
  - `npm i -g typescript-language-server` 
  - `npm i -g vscode-langservers-extracted` 
  - `npm i -g sql-language-server` 
  - `npm i -g @tailwindcss/language-server`
- Dotnet packages:
  - `dotnet tool install --global csharp-ls`
- Homebrew packages:
  - `brew install lua-language-server`
