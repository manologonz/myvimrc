"GITSIGNS
set statusline+=%{get(b:,'gitsigns_status','')}

" LIGHTLINE
let g:lightline = {
    \'active': {
    \   'left': [['mode', 'paste'], ['gitbranch'], ['filename', 'modified']],
    \   'right': [['percent', 'lineinfo'], ['filetype'], ['bufnum']]
    \},
    \'inactive': {
    \   'left': [['mode', 'paste'], ['gitbranch'], ['filename', 'modified']],
    \   'right': [['percent', 'lineinfo'], ['filetype', 'bufnum']]
    \},
    \'tabline': {
    \   'left': [['tabs']],
    \   'right': [['close']],
    \
    \},
    \'tab': {'active': ['tabnum', 'filename', 'modified']},
    \'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive'
    \},
    \'component_function': {
    \   'gitbranch': 'fugitive#head',
    \},
    \'colorscheme': 'onedark',
    \'subseparator': {
    \   'left': '',
    \   'right': ''
    \}
\}

"VSNIP
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['javascript', 'typescript']
let g:vsnip_filetypes.javascript = ['javascript']
let g:vsnip_filetypes.python = ['python']
let g:vsnip_filetypes.html = ['html']

"FLOATERM
let g:floaterm_keymap_new = '\tt'
let g:floaterm_keymap_toggle = '<C-\>'
let g:floaterm_keymap_prev = '\tp'
let g:floaterm_keymap_next = '\tn'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8
let g:floaterm_autoclose = 2

nnoremap <leader>tg :FloatermNew --autoclose=2 --height=0.9 --width=0.9 lazygit<CR>

" NERDCOMMENTER
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" EMMET
let g:tagalong_verbose = 1
