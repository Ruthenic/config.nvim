vim.g.did_load_filetypes = 1
--TODO: switch to a more lua friendly plugin manager
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use "nathom/filetype.nvim"
	use 'neovim/nvim-lspconfig'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'sainnhe/sonokai'
	use 'yamatsum/nvim-cursorline'
	use 'nvim-treesitter/nvim-treesitter'
	use {'ms-jpq/coq_nvim', branch = 'coq'}
	use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
	use {'ms-jpq/coq.thirdparty', branch = '3p'}
	use {'noib3/cokeline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use 'numtostr/FTerm.nvim'
	use 'andweeb/presence.nvim'
	use 'tpope/vim-fugitive'
	use 'folke/todo-comments.nvim'
	use 'dstein64/vim-startuptime'
end)
require("colorscheme")
require("config")
require("plugins")
require("keybinds")
