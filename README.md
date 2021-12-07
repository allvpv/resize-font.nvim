# resize-font #
Resize font in Neovim GUI. This plugin does not change your key-mappings. Put

```vim
" +/- fontsize
map <D-=> :ResizeFontBigger<cr>
map <D--> :ResizeFontSmaller<cr>
```

or something along those lines in your `init.vim`. Moreover, you can adjust the
step of resizing.

```vim
let g:resizefont_step=<your-value>
```
