" Prevent loading twice
if exists('g:loaded_resize_font_nvim') | finish | endif
lua require('resize-font')
