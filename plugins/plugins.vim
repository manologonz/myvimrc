call plug#begin('~/.config/nvim/plugins/plugged')

"colorscheme
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'

"lsp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

"treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"vimspector
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

"git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'

Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'

"telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"formatting
Plug 'sbdchd/neoformat'

"html
Plug 'mattn/emmet-vim'

" comments
Plug 'preservim/nerdcommenter'

"snippets
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

"react
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"lightline
Plug 'itchyny/lightline.vim'

"floaterm
Plug 'voldikss/vim-floaterm'

" Markdown
Plug 'skanehira/preview-markdown.vim'

call plug#end()
