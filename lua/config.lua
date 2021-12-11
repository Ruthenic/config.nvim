-- plugin-independent configuration, such as autocmds
local set = vim.opt

-- Set some stuff up like clipboard and mouse
set.termguicolors = true      -- Needed for literally any modern colorscheme
set.mouse = 'a'               -- Mouse support
set.clipboard = 'unnamedplus' -- Use X11 clipboard
set.pumheight = 5             -- Uhh whatever the fuck this does
set.number = true             -- Show line numbers
set.tabstop = 4               -- Set up tabs
set.shiftwidth = 4               -- See above

-- Autocmds

