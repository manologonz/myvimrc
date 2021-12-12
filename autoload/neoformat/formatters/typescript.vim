function! neoformat#formatters#typescript#enabled() abort
   return ['prettier', 'tsfmt']
endfunction

function! neoformat#formatters#typescript#tsfmt() abort
    return {
        \ 'exe': 'tsfmt',
        \ 'args': ['--replace', '--baseDir=%:h'],
        \ 'replace': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction

function! neoformat#formatters#typescript#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath','--tab-width=4', '"%:p"', '--parser', 'typescript'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction
