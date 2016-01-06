let s:pattern='^\(.* \)\([1-9][0-9]*\)$'

function! ResizeFont(adjustment)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let fontsize = substitute(&guifont, s:pattern, '\2', '')
    if (fontsize > 1) || (a:adjustment > 0)
      let newsize = fontsize + a:adjustment
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "ResizeFont can only be used with Gui Vim"
  endif
  redraw | echo &guifont
endfunction

function! ResizeFontBigger()
  call ResizeFont(1)
endfunction

function! ResizeFontSmaller()
  call ResizeFont(-1)
endfunction

command! ResizeFontBigger call ResizeFontBigger()
command! ResizeFontSmaller call ResizeFontSmaller()
