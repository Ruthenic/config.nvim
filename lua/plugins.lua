local gps = require("nvim-gps")
gps.setup()

require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

require'lspconfig'.clangd.setup{
	capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
require'lspconfig'.denols.setup{
	capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

local cmp = require('cmp')

cmp.setup({
    snippet = {
      expand = function(args)
      	require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        {name = 'nvim_lsp'},
    	{name = 'luasnip'},
    	{name = 'buffer'},
    }
})

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
