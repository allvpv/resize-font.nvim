let s:pattern='^\([^:]*\):h\([0-9]\+\).\([0-9]\+\)$'

function! ResizeFont(adj)
  let fontname = substitute(&guifont, s:pattern, '\1', '')
  let oldsize = str2float(substitute(&guifont, s:pattern, '\2.\3', ''))
  let newsize = string(oldsize + a:adj)
  let &guifont = fontname . ":h" . newsize

  redraw | echo &guifont
endfunction

function! ResizeFontBigger()
  call ResizeFont(0.5)
endfunction

function! ResizeFontSmaller()
  call ResizeFont(-0.5)
endfunction

command! ResizeFontBigger call ResizeFontBigger()
command! ResizeFontSmaller call ResizeFontSmaller()
