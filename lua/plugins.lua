local get_hex = require('cokeline/utils').get_hex
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
require'lspconfig'.vls.setup{
	cmd = {'/usr/local/bin/vls'},
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
    lualine_x = {'fileformat', 'filetype'},
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

-- Credit to the original author of cokeline for creating most of this config
require('cokeline').setup({
  default_hl = {
    focused = {
      fg = get_hex('Normal', 'fg'),
      bg = get_hex('Background', 'bg'),
    },
    unfocused = {
      fg = get_hex('Comment', 'fg'),
      bg = get_hex('Background', 'bg'),
    },
  },

  components = {
    {
      text = function(buffer) 
		  if buffer.is_focused then
			return '│ ' .. buffer.devicon.icon
		  else
			return '| ' .. buffer.devicon.icon
		  end
	  end,
      hl = {
        fg = function(buffer) return buffer.devicon.color end,
      },
    },
    {
      text = function(buffer) return buffer.unique_prefix end,
      hl = {
        style = 'italic',
      },
    },
    {
      text = function(buffer) return buffer.filename .. ' ' end,
    },
    {
      text = 'X',
      delete_buffer_on_left_click = true,
    },
    {
      text = ' ',
    },
  },
})
