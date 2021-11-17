function! neoformat#formatters#javascriptreact#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#javascriptreact#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '"%:p"'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction

