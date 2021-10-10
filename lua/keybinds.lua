local map = vim.api.nvim_set_keymap
map('n', '<C-a>', 'ggVG', {noremap=true, silent=true})
map('i', '<C-a>', '<Esc>ggVG', {noremap=true, silent=true})
map('v', '<C-c>', 'y', {noremap=true, silent=true})
map('v', '<C-x>', 'd', {noremap=true, silent=true})
map('v', '<C-v>', 'p', {noremap=true, silent=true})
map('i', '<C-z>', '<Esc>ui', {noremap=true, silent=true})
map('i', '<C-y>', '<Esc>:red<Enter>i', {noremap=true, silent=true})
map('i', '<C-s>', '<Esc>:w<Enter>i', {noremap=true})

