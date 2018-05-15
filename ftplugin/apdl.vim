" Add dictionary of commands and elements
set dictionary+=$HOME/.vim/bundle/apdl.vim\plugin\commands.txt
set dictionary+=$HOME/.vim/bundle/apdl.vim\plugin\elements.txt
"
set complete-=k complete+=k
" add '*' and '~' to the list of characters that are considered to be part of a keyword
" setlocal iskeyword+=*
" setlocal iskeyword+=~
" Ignore case for autocompletion
set ignorecase
