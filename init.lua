-- TODO: switch to a more lua friendly plugin manager
local set = vim.opt
require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'kyazdani42/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'joshdick/onedark.vim'
	use 'nvim-treesitter/nvim-treesitter'
	use {'ms-jpq/coq_nvim', branch = 'coq'}
	use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
	use {'noib3/cokeline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
	use 'numtostr/FTerm.nvim'
	use 'andweeb/presence.nvim'
	use 'tpope/vim-fugitive'
	use 'SmiteshP/nvim-gps'
end)
set.termguicolors = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.pumheight = 5
set.number = true
set.tabstop = 4
set.shiftwidth = 4
vim.cmd('colorscheme onedark') -- I would assume there would be a more lua-y way to do this... right?
require("plugins")
require("keybinds")
