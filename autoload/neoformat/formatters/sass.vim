function! neoformat#formatters#sass#enabled() abort
   return ['sassconvert']
endfunction

function! neoformat#formatters#sass#sassconvert() abort
    return {
            \ 'exe': 'sass-convert',
            \ 'args': ['-F sass', '-T sass', '-s'],
            \ 'stdin': 1,
            \ 'try_node_exe': 1,
            \ }
endfunction
