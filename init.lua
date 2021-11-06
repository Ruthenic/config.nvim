-- TODO: switch to a more lua friendly plugin manager
local set = vim.opt
require 'paq' {
	"savq/paq-nvim";
	'neovim/nvim-lspconfig';
	'kyazdani42/nvim-web-devicons';
	'nvim-lualine/lualine.nvim';
	'nvim-lua/plenary.nvim';
	'nvim-telescope/telescope.nvim';
	'kyazdani42/nvim-tree.lua';
	'lukas-reineke/indent-blankline.nvim';
	'joshdick/onedark.vim';
	'nvim-treesitter/nvim-treesitter';
	{'ms-jpq/coq_nvim', branch = 'coq'};
	{'ms-jpq/coq.artifacts', branch = 'artifacts'};
	'noib3/cokeline.nvim';
	'numtostr/FTerm.nvim';
	'andweeb/presence.nvim';
	'tpope/vim-fugitive';
	'SmiteshP/nvim-gps';
}
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
