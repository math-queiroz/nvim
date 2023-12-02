<div align="center"><p>
  <img src="https://github.com/math-queiroz/nvim/assets/61330506/22151668-ed72-4f53-a5a7-5e42bd0e8e24" width="300">
  <h1>Neovim Config</h1>
  <span>The lua config files for my neovim setup</span><br>
  <span>
    I mainly use <a href="https://github.com/folke/lazy.nvim">💤 lazy.nvim</a> for plugin management,
    <a href="https://github.com/ellisonleao/gruvbox.nvim">gruvbox</a> as colorscheme and
    <a href="https://github.com/nvim-lualine/lualine.nvim">lualine</a> as status bar
  </span>
</p></div>

# Usage
```
git clone https://github.com/math-queiroz/nvim ~/.config
```

# Features

## Plugins
A complete list of plugins can be found in the `lua/plugins/lazy.lua` file

+ Plugin management via [Lazy.nvim](https://github.com/folke/lazy.nvim)]
+ Autopairing via [NvimAutopairs](https://github.com/windwp/nvim-autopairs)
+ Comment toggling via [Comment](https://github.com/numToStr/Comment.nvim)
+ Completion via [coq_nvim](https://github.com/ms-jpq/coq_nvim)
+ Git UI hints via [Gitsings](https://github.com/lewis6991/gitsigns.nvim)
+ Theming from [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
+ Statusline via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
+ Snippets via [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
+ Bufferline via [Bufferline](https://github.com/akinsho/bufferline.nvim)
+ LSP config via [LspConfig](https://github.com/neovim/nvim-lspconfig)
+ Dir navigation via [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
+ Finder/Filter/Previewing via [Telescope](https://github.com/nvim-telescope/telescope.nvim)
+ Package management via [Mason](https://github.com/williamboman/mason.nvim)
+ User-defined mapping hint via [which-key.nvim](https://github.com/folke/which-key.nvim)

## Keybinds
A list of keybindings can be found in the `lua/keybinds.lua` file, 
and some other keybindings (like telescope's) are spread around theirs plugins definition files

The leader key is defined to <kbd>Space</kbd>

### Global
+ <kbd>Esc</kbd> - No highlight

+ <kbd>Alt</kbd> <kbd>j</kbd> - Move line up
+ <kbd>Alt</kbd> <kbd>k</kbd> - Move line down

+ <kbd>'</kbd> <kbd>"</kbd> - Surround in double quotes
+ <kbd>'</kbd> <kbd>'</kbd> - Surround in simple quotes
+ <kbd>'</kbd> <kbd>{</kbd> - Surround in curly brackets
+ <kbd>'</kbd> <kbd>[</kbd> - Surround in brackets
+ <kbd>'</kbd> <kbd>{</kbd> - Surround in parenthesis
+ <kbd>'</kbd> <kbd><</kbd> - Surround in less than symbol


### Bufferline
+ <kbd>Tab</kbd> - Next tab
+ <kbd>Shift</kbd> <kbd>Tab</kbd> - Previous tab
+ <kbd>Leader</kbd> <kbd>Q</kbd> - Close file

### Comment
+ <kbd>Ctrl</kbd> <kbd>K</kbd> - Comment line/block

### GitSigns
+ <kbd>Leader</kbd> <kbd>gd</kbd> - Git diff
+ <kbd>Leader</kbd> <kbd>gh</kbd> - Git line highlights
+ <kbd>Leader</kbd> <kbd>gj</kbd> - Go to next hunk
+ <kbd>Leader</kbd> <kbd>gk</kbd> - Go to previous hunk
+ <kbd>Leader</kbd> <kbd>gy</kbd> - Stage hunk
+ <kbd>Leader</kbd> <kbd>gr</kbd> - Reset hunk
+ <kbd>Leader</kbd> <kbd>ga</kbd> - Stage hunk

### NvimTree
+ <kbd>Ctrl</kbd> <kbd>w</kbd> <kbd>Ctrl</kbd> <kbd>e</kbd>  - Open directory tree
