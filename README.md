# My Neovim configuration (.NET/React)

## Content

- [Languages and technologies](#languages-and-technologies)
- [Requirements](#requirements)
- [Plugins](#plugins)
- [Keymaps](#keymaps)
- [Screenshots](#screenshots)

## Languages and technologies

- `C#`
- `JavaScript / Typescript`
- `HTML`
- `CSS / SCSS / Tailwind CSS`
- `Docker`
- `SQL`
- `JSON`
- `Lua`

## Requirements

- Packer:
  - Macos, Linux:
    ```sh
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\ 
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```
  - Windows: 
    ```sh 
    git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
    ```
- Nerd Font (Hack Nerd Font Mono):
  - Macos: 
    ```sh
    brew tap homebrew/cask-fonts
    brew install --cask font-hack-nerd-font
    ```
  - Windows, Linux: [Download .zip](https://www.nerdfonts.com/font-downloads)
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

## Plugins:

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
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
- [folke/lsp-colors.nvim](https://github.com/folke/lsp-colors.nvim)
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
- [romgrk/barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [907th/vim-auto-save](https://github.com/907th/vim-auto-save)
- [jiangmiao/auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
- [terrortylor/nvim-comment](https://github.com/terrortylor/nvim-comment)
- [dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)


## Keymaps

|Mode|Keymap|Action|
|-|-|-|
|`normal`|`Shift + h`|`navigate to left`|
|`normal`|`Shift + j`|`navigate to down`|
|`normal`|`Shift + k`|`navigate to up`|
|`normal`|`Shift + l`|`navigate to right`|
|`normal`|`Shift + s`|`split vertical`|
|`normal`|`Shift + v`|`split horizontal`|
|`normal`|`Shift + n`|`toggle sidebar`|
|`normal`|`Shift + f`|`find files`|
|`normal`|`Tab`|`next tab`|
|`normal`|`Shift + Tab`|`previous tab`|
|`normal`|`Shift + q`|`close tab`|
|`normal`|`Shift + t`|`toggle terminal`|
|`normal`|`Ctrl + d`|`diagnostic jump next`|
|`normal`|`Ctrl + h`|`hover doc`|
|`normal`|`Ctrl + f`|`find variable`|
|`insert`|`Tab`|`next suggestion`|
|`insert`|`Shift + Tab`|`previous suggestion`|
|`insert`|`Esc`|`close suggestions`|
|`insert`|`Enter`|`accept suggestion`|

## Screenshots

![cmp-lsp](./screenshots/cmp-lsp.jpg)

![lsp-doc](./screenshots/lsp-doc.jpg)

![lsp-find](./screenshots/lsp-find.jpg)

![lsp-hint](./screenshots/lsp-hint.jpg)

![telescope](./screenshots/telescope.jpg)
