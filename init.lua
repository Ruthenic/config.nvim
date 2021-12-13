vim.g.did_load_filetypes = 1
--TODO: switch to a more lua friendly plugin manager
require("paq")({
	'wbthomason/packer.nvim';
	"nathom/filetype.nvim";
	'neovim/nvim-lspconfig';
	'kyazdani42/nvim-web-devicons';
	'nvim-lualine/lualine.nvim';
	'nvim-lua/plenary.nvim';
	'nvim-telescope/telescope.nvim';
	'kyazdani42/nvim-tree.lua';
	'lukas-reineke/indent-blankline.nvim';
	'sainnhe/sonokai';
	'yamatsum/nvim-cursorline';
	'nvim-treesitter/nvim-treesitter';
	{'ms-jpq/coq_nvim', branch='coq'};
	{'ms-jpq/coq.artifacts', branch='artifacts'};
	{'ms-jpq/coq.thirdparty', branch='3p'};
	'noib3/cokeline.nvim';
	'numtostr/FTerm.nvim';
	'andweeb/presence.nvim';
	'tpope/vim-fugitive';
	'folke/todo-comments.nvim';
	'dstein64/vim-startuptime';
	{'nvim-telescope/telescope-fzf-native.nvim', run='make'};
})
require("colorscheme")
require("config")
require("plugins")
require("keybinds")
