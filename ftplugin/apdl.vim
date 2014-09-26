" Add dictionary of commands and elements
set dictionary+=H:\Git\apdl.vim\help\commands.txt
set dictionary+=H:\Git\apdl.vim\help\elements.txt
"
:set complete-=k complete+=k
" add '*' and '~' to the list of characters that are considered to be part of a keyword
setlocal iskeyword+=*
setlocal iskeyword+=~
" Ignore case for autocompletion
:set ignorecase
