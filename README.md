# lido.nvim

A personal [Neovim](https://neovim.io) configuration based off of the wonderful
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

Tested on:

```
NVIM v0.10.4
Build type: Release
LuaJIT 2.1.1736781742
```

## Install Neovim

> [!WARNING]
> Distro packages may not ship up recent versions of Neovim (e.g. Ubuntu 24.04
> ships `v0.9.5` and Debian 12 "bookworm" ships `v0.7.2`.

Build from
[source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source),
download a
[release](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-download),
or install from
[package](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package).

#### Debian x86_64

To install from release on Debian 12 "bookworm" and Ubuntu 24.04 LTS:

```sh
VER='0.10.4' && \
URI="https://github.com/neovim/neovim/releases/download/v${VER}/nvim-linux-x86_64.tar.gz" && \
curl -LO "$URI" && tar -zxf nvim-linux-x86_64.tar.gz && \
sudo mkdir -p /usr/local/nvim/ && sudo mv nvim-linux-x86_64 /usr/local/nvim/"$VER" && \
echo 'export PATH=/usr/local/nvim/'"$VER"'/bin:$PATH' | sudo tee /etc/profile.d/nvim.sh && \
rm nvim-linux-x86_64.tar.gz
```

## External Dependencies

Some additional packages are needed to extended Neovim's functionality.

Use `:checkhealth` to verify configuration and find any missing dependencies.

### Common Utils

`git`, `make`, `unzip`, `gcc`, and `curl` are easily installed on Debian/Ubuntu
by installing Neovim's [build from
source](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites)
prerequisites along with `git`:

```sh
sudo apt-get install ninja-build gettext cmake unzip curl build-essential git luarocks
```

### Telescope

[`ripgrep`](https://github.com/BurntSushi/ripgrep), [`fd`](https://github.com/sharkdp/fd), and [`fzf`](https://github.com/junegunn/fzf) are nice-to-haves that support things like Telescope's `live_grep` and
`find_files`.

```sh
sudo apt-get install ripgrep fd-find fzf
```

### Language Server Protocol (LSP)

[mason.nvim](https://github.com/williamboman/mason.nvim) will install LSP
servers, linters, and formatters and requires `node`, `npm`, `pip`, and `venv`
to be available.

```sh
sudo apt install nodejs npm python3-pip python3-venv
```

## First Launch

When running `nvim` for the first time the
[Lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager will
automatically start installing plugins and
[mason](https://github.com/williamboman/mason.nvim) will begin installing
language servers, formatters, and related tooling.

Once the initial install process finishes `nvim` should close and open without
warning or error.

Run `:checkhealth` to report on any outstanding issues.

Run `:Lazy` to install, remove, or update plugins and `:Mason` to manage LSP
tooling.
