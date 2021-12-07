# resize-font #
Resize font in Neovim GUI. This plugin does not change your key-mappings. Please
put

```vim
" +/- fontsize
map <D-=> :ResizeFontBigger<cr>
map <D--> :ResizeFontSmaller<cr>
```

or something along those lines in your `init.vim`.
