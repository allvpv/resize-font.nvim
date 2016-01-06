let s:pattern='^\(.* \)\([1-9][0-9]*\)$'

function! ResizeFont(pt)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let fontsize = substitute(&guifont, s:pattern, '\2', '')
    let &guifont = fontname . fontsize + a:pt
  else
    echoerr "ResizeFont can only be used with Gui Vim"
  endif
endfunction

function! ResizeFontPlus()
  call ResizeFont(1)
endfunction

function! ResizeFontMinus()
  call ResizeFont(-1)
endfunction
