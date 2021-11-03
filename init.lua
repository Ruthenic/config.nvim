-- TODO: switch to a more lua friendly plugin manager
local set = vim.opt
local Plug = vim.fn['plug#']
vim.call("plug#begin", "~/.vim/plugged")
Plug 'neovim/nvim-lspconfig'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'joshdick/onedark.vim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug('ms-jpq/coq_nvim', {branch = 'coq'})
Plug('ms-jpq/coq.artifacts', {branch = 'artifacts'})
Plug 'noib3/cokeline.nvim'
Plug 'numtostr/FTerm.nvim'
Plug 'andweeb/presence.nvim'
Plug 'tpope/vim-fugitive'
Plug 'SmiteshP/nvim-gps'
Plug 'github/copilot.vim'
vim.call('plug#end')
set.termguicolors = true
set.mouse = 'a'
set.clipboard = 'unnamedplus'
set.pumheight =5
set.number = true
set.tabstop = 4
set.shiftwidth = 4
vim.cmd('colorscheme onedark') -- I would assume there would be a more lua-y way to do this... right?
require("plugins")
require("keybinds")
