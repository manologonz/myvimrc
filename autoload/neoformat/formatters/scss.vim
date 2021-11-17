function! neoformat#formatters#scss#enabled() abort
   return ['sassconvert']
endfunction

function! neoformat#formatters#scss#sassconvert() abort
    return {
            \ 'exe': 'sass-convert',
            \ 'args': ['-F scss', '-T scss', '--indent ' . (&expandtab ? shiftwidth() : 't')],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \ }
endfunction

