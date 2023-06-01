# NvChad-custom-config

This repository contains a personalized NvChad configuration.

[NvChad](https://github.com/NvChad/NvChad) has a very good initial configuration
for Neovim. Also, it has a mechanism to override the default configuration and
possibility to install other plugins. The `custom` folder in NvChad is the place
where the specific configurations are stored, but all files present in that
folder are not tracked by version control in NvChad's repository.

So, this repository is used to track my all NvChad custom configuration.

## Installation

Basically we have to clone this repository replacing the default NvChad's custom
folder.

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && git clone git@github.com:acosta/NvChad-custom-config.git ~/.config/nvim/lua/custom && nvim
```

## Update

To update NvChad run the following command (in nvim):

```vim
:NvChadUpdate
```

## Uninstall

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```
