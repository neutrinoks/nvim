# NeoVim Configuration

This is my personal NeoVim configuration. Just stored in a repository for being flexible, when experimenting with third-party pre-configured scripts (e.g. NvChad).

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
