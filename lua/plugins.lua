require('lualine').setup({
	theme = 'auto'
})
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}

require'lspconfig'.clangd.setup{}
require'lspconfig'.denols.setup{}

require('bufferline').setup()
