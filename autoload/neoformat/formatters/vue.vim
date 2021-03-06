function! neoformat#formatters#vue#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#vue#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath','--tab-width=4', '"%:p"', '--parser', 'vue'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction
