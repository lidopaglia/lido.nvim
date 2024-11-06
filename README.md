# Neovim Configuration

Based off of the wonderful [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).


## Install Neovim

[Install](https://github.com/neovim/neovim/blob/master/INSTALL.md) a modern
[Neovim](https://neovim.io) (v0.9.5+ built with LuaJIT).

There's many ways to accomplish this but I'll use Debian-based examples here for brevity.

To manually install a release on Debian:

```sh
VER='0.9.5' && \
URI="https://github.com/neovim/neovim/releases/download/v${VER}/nvim-linux64.tar.gz" && \
curl -LO "$URI" && tar -zxf nvim-linux64.tar.gz && \
sudo mkdir -p /usr/local/nvim/ && sudo mv nvim-linux64 /usr/local/nvim/"$VER" && \
echo 'export PATH=/usr/local/nvim/'"$VER"'/bin:$PATH' | sudo tee /etc/profile.d/nvim.sh && \
rm nvim-linux64.tar.gz
```

## Install External Dependencies

### Basic utils: `git` (v2.19.0+), `make`, `unzip`, C Compiler (`gcc`), `curl`.

The basics are easily met on Debian/Ubuntu by installing Neovim's [build from source](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites) prerequisites along with `git`:

```sh
sudo apt-get install ninja-build gettext cmake unzip curl build-essential git luarocks
```

### Optional: [`ripgrep`](https://github.com/BurntSushi/ripgrep), [`fd`](https://github.com/sharkdp/fd), & [`fzf`](https://github.com/junegunn/fzf)

These are nice-to-haves that support things like Telescope's `live_grep` and `find_files`.

```sh
sudo apt-get install ripgrep fd-find fzf
```

### Language server accoutrements: `node`, `npm`, `pip`, `venv`

To install language servers via `mason` and other tooling we need `node`, `npm`, `pip`, and `venv`.

```sh
sudo apt install nodejs npm python3-pip python3-venv
```

## First Launch

When running `nvim` for the first time the `Lazy` plugin manager will automatically start installing plugins and `mason` will begin installing language servers, formatters, and related tooling.

Once the initial install process finishes `nvim` should close and open without warning or error.

Run `:checkhealth` to report on any outstanding issues.

Run `:Lazy` to install, remove, or update plugins and `:Mason` to manage LSP tooling.
