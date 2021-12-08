let s:pattern='^\([^:]*\):h\([0-9]\+\(.[0-9]\+\)\?\)$'

if !exists('g:resizefont_step')
  let g:resizefont_step=0.3
endif

function! ResizeFont(adj)
  if &guifont =~ s:pattern
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let oldsize = str2float(substitute(&guifont, s:pattern, '\2', ''))
  else
    echoerr "&guifont incorrect"
    return -1
  endif

  let newsize = string(oldsize + a:adj)
  let &guifont = fontname . ":h" . newsize

  redraw | echo &guifont
endfunction

function! ResizeFontBigger()
  call ResizeFont(g:resizefont_step)
endfunction

function! ResizeFontSmaller()
  call ResizeFont(-g:resizefont_step)
endfunction

command! ResizeFontBigger call ResizeFontBigger()
command! ResizeFontSmaller call ResizeFontSmaller()
