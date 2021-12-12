function! neoformat#formatters#typescriptreact#enabled() abort
   return ['tsfmt']
endfunction

function! neoformat#formatters#typescriptreact#tsfmt() abort
    return {
        \ 'exe': 'tsfmt',
        \ 'args': ['--replace','--tab-width=4', '--baseDir=%:h'],
        \ 'replace': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction
