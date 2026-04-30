vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.linebreak = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10 

vim.keymap.set('n', '<leader>t', ':split | terminal\ni')
vim.keymap.set('t', '<leader>t', 'exit\n')

vim.keymap.set('n', '{', 'i{\n}<up>\n')

vim.keymap.set('i', '"', '""<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣',}

vim.opt.spell = false
vim.keymap.set('n', '<leader>st', ':set spell!\n')

vim.keymap.set('n', '<leader>w', ':w\n')
vim.keymap.set('n', '<leader>q', ':q\n')
vim.keymap.set('n', '<leader>ft', ':Ex\n')
