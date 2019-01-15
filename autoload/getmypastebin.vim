fun! Gpaste(arg)
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
