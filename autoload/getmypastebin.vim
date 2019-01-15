" getmypastebin.vim - getmypastebin
" Author:       Andros Fenollosa <https://programadorwebvalencia.com/>
" Version:      1.0
" GetLatestVimScripts: 1 1 :AutoInstall: getmypastebin.vim

if exists("g:loaded_getmypastebin")
    finish
endif
let g:loaded_getmypastebin = 1

function! Gpaste(arg)
    let search = a:arg
    let result = system('getmypastebin --help ' . search)
    split __getmypastebin__
    normal! ggdG
    setlocal filetype=getmypastebin
    setlocal buftype=nofile
    " Insert result
    call append(0, split(result, '\v\n'))
endfunction

command! -nargs=* Gpaste call Gpaste('<args>')
