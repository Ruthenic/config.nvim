local gps = require("nvim-gps")
local coq = require "coq"
gps.setup()

require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

require'lspconfig'.clangd.setup{
	coq.lsp_ensure_capabilities()
}
require'lspconfig'.denols.setup{
	coq.lsp_ensure_capabilities()
}

vim.cmd('COQnow -s')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename', { gps.get_location, condition = gps.is_available }},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require("bufferline").setup({})
