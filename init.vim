set path+=**
set wildmode=longest,list,full
set wildmenu
"Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
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
set scrolloff=10
set number
set relativenumber
set numberwidth=1
set mouse=r
set encoding=utf-8
set ruler
set cursorline
set noshowmatch
set clipboard=unnamed
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set cc=80
set completeopt=menu,menuone,noselect
set signcolumn=yes
set isfname+=@-@
set nocompatible
set laststatus=2

" Give more space for dsplaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4s )
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins=completition=menu|
set shortmess+=c

" Search
set nohlsearch
set incsearch
set ignorecase
set smartcase

let mapleader = " "



so ~/.config/nvim/plugins/plugins.vim
so ~/.config/nvim/configs/plugins.vim
so ~/.config/nvim/configs/maps.vim

lua require('meggalord')

lua require'nvim-treesitter.configs'.setup {
\    highlight = { enable = true },
\    incremental_selection = {
\        enable = true,
\        keymaps = {
\            init_selection = "gnn",
\            node_incremental = "grn",
\            scope_incremental = "grc",
\            node_decremental = "grm",
\
\        },
\    },
\    indent = {
\      enable = true
\    }
\}

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 0
let g:netrw_browse_split = 0
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:preview_markdown_auto_update = 1

colorscheme onedark


hi Floaterm guibg=onedark
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=onedark guifg=onedark

"hi Normal guibg=NONE ctermbg=NONE

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END

augroup MEGGALORD
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END

augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END
