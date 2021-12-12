function! neoformat#formatters#css#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#css#prettier() abort
    return {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '--tab-width=4', '"%:p"', '--parser', 'css'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ }
endfunction

