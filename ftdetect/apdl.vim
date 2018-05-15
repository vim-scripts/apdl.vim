" Automatic detection of file-type by inspecting the file's extension
augroup apdlDetect
    autocmd!
    autocmd BufRead,BufNewFile *.apdl,*.ans setfiletype apdl
augroup END
