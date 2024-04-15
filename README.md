# resize-font #
Resize font in Neovim GUI.

⚠️ I am no longer maintaining this. Check out [Neovide](https://neovide.dev) with it's
`vim.g.neovide_scale_factor` option.

#### packer.nvim

```lua
use 'allvpv/resize-font.nvim' -- `Packer`
```

### config

```lua
local resize_font = require 'resize-font'

-- setup is optional; default resize step is '0.3'
resize_font.setup {
    resize_step = 0.3,
}

-- prefered way of setting the keymap
vim.keymap.set('', '<D-=>', resize_font.bigger)
vim.keymap.set('', '<D-->', resize_font.smaller)

-- user command is also exposed
vim.keymap.set('', '<D-=>', ':ResizeFontBigger<CR>')
vim.keymap.set('', '<D-->', ':ResizeFontSmaller<CR>')
```

