let s:pattern='^\(.* \)\([1-9][0-9]*\)$'

function! ResizeFont(points)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let fontsize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = fontsize + a:points
    let newfont = fontname . newsize
    let &guifont = newfont
  else
    echoerr "ResizeFont can only be used with Gui Vim"
  endif
endfunction

function! ResizeFontBigger()
  call ResizeFont(1)
endfunction

function! ResizeFontSmaller()
  call ResizeFont(-1)
endfunction

command! ResizeFontBigger call ResizeFontBigger()
command! ResizeFontSmaller call ResizeFontSmaller()
