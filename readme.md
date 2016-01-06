# resize-font.vim #
#### *quickly resize font in gui vim* ####

**Installation:**

Place this in your .vimrc:

    // VimPlug
      Plug 'wahidrahim/resize-font'
    // Vundle
      Plugin 'wahidrahim/resize-font'
    // NeoBundle
      NeoBundle 'wahidrahim/resize-font'

then run the following in Vim:

    :source %
    :PlugInstall 

If you're using Pathogen, run the following:

    cd ~/.vim/bundle
    git clone https://github.com/wahidrahim/resize-font

**usage:**

    map <F11> :ResizeFontSmaller<CR>
    map <F12> :ResizeFontBigger<CR>
