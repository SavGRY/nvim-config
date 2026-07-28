# Requirements

- nvim
- git
- tree-sitter-cli and a C compiler
    - To install `tree-sitter-cli` install it via your package manager  
    eg. `sudo pacman -S tree-sitter-cli`
- curl

## Installation

Go inside the `.config/nvim` folder and then glone the project

```
cd $HOME/.config/
mv nvim/ nvim.bak
git clone https://github.com/SavGRY/nvim-config.git
mv nvim-config/ nvim/
```
or use ssh  

If doesn't install the LSP automagically, then
Install the lsps with `TSInstall <name-lsp>`.  
eg: `:TSInstall sql typescript python`

