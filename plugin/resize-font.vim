let s:pattern='^\([^:]*\):h\([0-9]\+\).\([0-9]\+\)$'

function! ResizeFont(adjustment)
    let oldfontsize = str2float(substitute(&guifont, s:pattern, '\2.\3', ''))

    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let fontsize = string(oldfontsize + adjustment)
    let newfont = fontname . ":h" . fontsize 
    let &guifont = newfont
    
    redraw | echo newfont
endfunction

function! ResizeFontBigger()
  call ResizeFont(0.5)
endfunction

function! ResizeFontSmaller()
  call ResizeFont(-0.5)
endfunction

command! ResizeFontBigger call ResizeFontBigger()
command! ResizeFontSmaller call ResizeFontSmaller()
