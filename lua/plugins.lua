require('lualine').setup({
	theme = 'auto'
})
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

require('bufferline').setup()
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
