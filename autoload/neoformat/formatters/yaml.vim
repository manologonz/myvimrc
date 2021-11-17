function! neoformat#formatters#yaml#enabled() abort
   return ['prettier']
endfunction

function! neoformat#formatters#yaml#prettier() abort
    return {
            \ 'exe': 'prettier',
            \ 'args': ['--stdin-filepath', '"%:p"', '--parser', 'yaml'],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \ }
endfunction
