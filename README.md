# resize-font #
Resize font in Neovim GUI.

### packer.nvim

```lua
  use { 'allvpv/resize-font.nvim', config = function()
      vim.keymap.set('', '<D-=>', ':ResizeFontBigger<CR>')
      vim.keymap.set('', '<D-->', ':ResizeFontSmaller<CR>')
      -- Adjust step of resizing (optional)
      -- vim.g.resizefont_step = <floating-number>
  end }
  --
```

