function! neoformat#formatters#lua#enabled() abort
    return ['luafmt']
endfunction

function! neoformat#formatters#lua#luafmt() abort
    return {
        \ 'exe': 'luafmt',
        \ 'args': ['--stdin'],
        \ 'stdin': 1,
        \ }
endfunction

