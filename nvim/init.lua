vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10 

vim.keymap.set('n', '<leader>t', ':split | terminal<NL>i')
vim.keymap.set('t', '<leader>t', 'exit<NL>')

vim.keymap.set('n', '<leader>{{', 'i{<NL>}<up><NL>')

vim.keymap.set('i', '"', '""<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
vim.keymap.set('i', '<', '<><Esc>i')

--vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
--	patern = '*.rs',
--	callback = function()
--		vim.keymap.set('i', 'Vec', 'Vec<><Esc>i')
--	end,
--})

vim.keymap.set('n', '<leader>mc', 'i/*<NL>/<up><NL>') -- [M]ulti-line [C]omment
vim.keymap.set('n', '<leader>oc', 'i// ') -- [O]ne-line [C]omment

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣',}

vim.opt.spell = false
vim.keymap.set('n', '<leader>st', ':set spell!<NL>')

vim.keymap.set('n', '<leader>w', ':w<NL>')
vim.keymap.set('n', '<leader>q', ':q<NL>')
vim.keymap.set('n', '<leader>ft', ':Ex<NL>')
