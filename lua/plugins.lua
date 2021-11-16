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

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
local sumneko_root_path = '/home/ruthenic/lua-language-server/bin/Linux/'
require'lspconfig'.sumneko_lua.setup {
	cmd = {sumneko_root_path .. "lua-language-server", "-E", sumneko_root_path .. "main.lua"},
	coq.lsp_ensure_capabilities({settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
				path = runtime_path,
			},
			diagnostics = {
				globals = {'vim'},
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	}})
}

vim.cmd('COQnow -s')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'sonokai',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename', { gps.get_location, condition = gps.is_available }},
    lualine_x = {'fileformat'},
    lualine_y = {'diff'},
    lualine_z = {'filetype'}
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
