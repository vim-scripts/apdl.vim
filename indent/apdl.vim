" Vim indent file
" Language:    apdl
" Maintainer:  Cristobal Tapia Camu <crtapia at gmail dot com>
" Created:     2014 Jun 26
" Last Change: 2014 Oct 14


" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1
let s:functionWithoutEndStatement = 0

setlocal indentexpr=GetApdlIndent()
setlocal indentkeys=!,o,O,*<Return>,=~*endif,=~*enddo,=~*else,=~*elseif

" Only define the function once.
if exists("*GetApdlIndent")
  finish
endif

function GetApdlIndent()
  " Find a non-blank line above the current line.
  let plnum = prevnonblank(v:lnum - 1)

  " At the start of the file use zero indent.
  if plnum == 0
    return 0
  endif

  let curind = indent(plnum)
  " Add a 'shiftwidth' after *if, *else, *elseif, *do, *create
  if getline(plnum) =~? '^\s*\(*if\|*do\|*else\|*elseif\|*create\|*dowhile\)\>'
    let curind = curind + &sw
  endif

  " Subtract a 'shiftwidth' on a *else, *elseif, *endif, *enddo, *end
  if getline(v:lnum) =~? '^\s*\(*else\|*elseif\|*endif\|*enddo\|*end\)\>'
    let curind = curind - &sw
  endif

  return curind
endfunction

" vim:sw=2
