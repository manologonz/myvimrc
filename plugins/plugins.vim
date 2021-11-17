call plug#begin('~/.config/nvim/plugins/plugged')

" colorscheme
Plug 'joshdick/onedark.vim'

" highlight
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mxw/vim-jsx'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'sharkdp/fd'

" navigation
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" completition
Plug 'hrsh7th/nvim-compe'

"git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'

" comments
Plug 'preservim/nerdcommenter'

" terminal
Plug 'akinsho/toggleterm.nvim'

" formatting
Plug 'sbdchd/neoformat'

"lightline
Plug 'itchyny/lightline.vim'

" window management
Plug 'szw/vim-maximizer'

" Debug
Plug 'puremourning/vimspector'

" Snips
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'alvan/vim-closetag'

" Emmet
Plug 'mattn/emmet-vim'

call plug#end()

