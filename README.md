# NeoVim Configuration

This is my personal NeoVim configuration. Just stored in a repository for being flexible, when experimenting with third-party pre-configured scripts (e.g. NvChad).

### Requirements

NeoVim in version `0.9.0` is required!

### Installation

To install it completely new, remove existing configurations:
```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

Then clone this repository and install VimPlug:
```bash
git clone https://github.com/neutrinoks/nvim.git ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

When running NeoVim for the first time execute:
```
:PlugInstall
```
then restart to make all changes applied properly.

### Current Plugins

- nvim-tree/nvim-tree: 
- nvim-tree/nvim-web-devicons
- nvim-lualine/lualine
- nvim-telescope/telescope
- nvim-lua/plenary
- nvim-treesitter/nvim-treesitter
- lukas-reineke/indent-blankline
- romgrk/barbar
- hrsh7th/nvim-cmp & several addons
- neovim/nvim-lspconfig
- L3MON4D3/LuaSnip
