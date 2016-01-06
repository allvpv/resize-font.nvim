# resize-font.vim #
#### *quickly resize font in gui vim* ####

**Installation:**

Place this in your .vimrc:

*VimPlug*
    // .vimrc
    Plug 'wahidrahim/resize-font'

    // run in vim
    :source %
    :PlugInstall

*Vundle*
    // .vimrc
    Plugin 'wahidrahim/resize-font'

    // run in vim
    :source %
    :PluginInstall

*NeoBundle*
    // .vimrc
    NeoBundle 'wahidrahim/resize-font'

    // run in vim
    :source %
    :NeoBundleInstall

If you're using Pathogen, run the following:

    cd ~/.vim/bundle
    git clone https://github.com/wahidrahim/resize-font

**usage:**

    map <F11> :ResizeFontSmaller<CR>
    map <F12> :ResizeFontBigger<CR>
