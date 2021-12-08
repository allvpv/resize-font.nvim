let s:pattern='^\([^:]*:[hw]\)\([0-9]\+\(.[0-9]\+\)\?\)$'

if !exists('g:resizefont_step')
  let g:resizefont_step=0.3
endif

function! ResizeFont(adj)
  if !exists('&guifont')
    echoerr "&guifont option does not exist"
    return -1
  elseif !(&guifont =~ s:pattern)
    echoerr "cannot parse &guifont (it does not match regular expression)"
    return -1
  endif

  let fontname = substitute(&guifont, s:pattern, '\1', '')
  let oldsize = str2float(substitute(&guifont, s:pattern, '\2', ''))

  let &guifont = fontname . string(oldsize + a:adj)
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
