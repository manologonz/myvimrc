set path+=**
syntax on
set exrc
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.config/nvim/undodir
set undofile
set termguicolors
set scrolloff=8
set guifont=Cascadia_Code
set debug=throw
"set guicursor=
set number
set mouse=r
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
set tabstop=4
set softtabstop=4
set noexpandtab
set shiftwidth=4
set shiftround
set nosmartindent
set autoindent
set copyindent
set cc=80
set nocompatible
set completeopt=menuone,noselect
set noshowmode
set signcolumn=yes
set isfname+=@-@

" Give more space for dsplaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4s )
" delays and poor user experience.
set updatetime=100
"set updatetime=300

" Don't pass messages to |ins=completition=menu|
set shortmess+=c

" Nice menu when typing :find *.py
set wildmode=longest,list,full
set wildmenu


" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" Search
set nohlsearch
set incsearch
"set ignorecase
set smartcase

" netrw.vim
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

let mapleader = " "

so ~/.config/nvim/plugins/plugins.vim
so ~/.config/nvim/configs/plugins.vim
so ~/.config/nvim/configs/maps.vim

let g:preview_markdown_auto_update = 1

lua require('meggalord')

colorscheme onedark

highlight NvimTreeFileDirty guifg=#D3B353
" highlight NvimTreeFileStaged guifg=#DB9958
highlight NvimTreeFileMerge guifg=#51E0E8
highlight NvimTreeFileNew guifg=#73C98A
highlight NvimTreeFileRenamed guifg=#73C98A
highlight NvimTreeFileDeleted guifg=red
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup MEGGALORD
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
    "autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END

" augroup javascript_folding
"     au!
"     au FileType javascript setlocal foldmethod=syntax
" augroup END
