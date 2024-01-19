# NeoVim Configuration

This is my personal NeoVim configuration. Just stored in a repository for being flexible, when experimenting with third-party pre-configured scripts (e.g. NvChad).

### Requirements

- NeoVim in version `0.9.0` is required!
- **Nerd Fonts** are required for nice display of icons (currently Cousine Nerd Font is configured,
  which is packed into this directory)
- Because **telescope** is included in this configuration, `ripgrep` package is required.
- Because **tree-sitter** is configured for Rust and Python linting, `pyright` needs to be installed.
- Some package needs `nodejs`, so needs to be installed.
- Currently integrating **ms-jpg/coc**, which needs `python` + `pip` + `venv`.

### Installation

- Step 1: Install requirements mentioned above
    - Install `nodejs`, e.g. 
      ```sh
      sudo apt install nodejs
      sudo pamac install nodejs
      ```
    - Install `ripgrep`, e.g.
      ```sh
      sudo apt install ripgrep
      sudo pamac install ripgrep
      ```
    - Install `python`, e.g.
      ```sh
      sudo apt install python python-pip
      sudo pamac install python python-pip
      ```
    - Install `venv` or `virtualenv` for Python:
      ```sh
      sudo apt install venv
      sudo pamac install virtualenv
      ```
    - Install pyright with the tool of your choice, e.g. 
      ```sh
      npm install --global pyright
      ```
      or
      ```sh
      pip install pyright
      ```
- Step 2: Install some Nerd Font of your choice (this config uses Cousine Nerd Font)
    - Cousine Nerd Font is available here: [Cousine Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Cousine.zip)
    - Extract and copy to your local TTF folder, e.g.
      ```sh
      unzip Cousine.zip
      sudo mv *.ttf /usr/share/fonts/TTF
      ```
      For using another Nerd Font, see [this section](#using-another-nerd-font).
- Step 3: Remove existing configurations completely, to avoid conflicts:
  ```sh
  rm -rf ~/.config/nvim
  rm -rf ~/.local/share/nvim
  rm -rf ~/.local/state/nvim
  ```
- Step 4: Clone this repository and install VimPlug:
  ```sh
  git clone https://github.com/neutrinoks/nvim.git ~/.config/nvim
  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  ```
- Step 4: When running NeoVim for the first time execute:
  ```
  :PlugInstall
  ```
- Step 5: Restart to make all changes applied properly.

### Current contained plugins

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

### Using another Nerd Font

If you want to use another Nerd Font, you have to specifiy it in `init.lua` line 75, e.g.
```lua
opt.guifont = "Cousine Nerd Font"
```
or
```lua
opt.guifont = "Hack Nerd Font"
```
