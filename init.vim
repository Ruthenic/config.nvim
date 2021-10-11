" TODO: start using an init.lua (main blocker is I cbf to switch package
" managers (maybe I can make a wrapper?)
call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'akinsho/bufferline.nvim'
Plug 'numtostr/FTerm.nvim'
Plug 'andweeb/presence.nvim'
Plug 'tpope/vim-fugitive'
Plug 'SmiteshP/nvim-gps'
call plug#end()
set termguicolors
set mouse=a
set clipboard=unnamedplus
set pumheight=5
set number
colorscheme onedark
lua require("plugins")
lua require("keybinds")
