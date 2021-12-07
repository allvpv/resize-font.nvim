let s:pattern_integer='^\([^:]*\):h\([0-9]\+\)$'
let s:pattern_float='^\([^:]*\):h\([0-9]\+\).\([0-9]\+\)$'

function! ResizeFont(adj)
  if &guifont =~ s:pattern_integer
    let fontname = substitute(&guifont, s:pattern_integer, '\1', '')
    let oldsize = str2float(substitute(&guifont, s:pattern_integer, '\2', ''))
  elseif &guifont =~ s:pattern_float
    let fontname = substitute(&guifont, s:pattern_float, '\1', '')
    let oldsize = str2float(substitute(&guifont, s:pattern_float, '\2.\3', ''))
  else
    echoerr "&guifont incorrect"
    return -1
  endif

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
