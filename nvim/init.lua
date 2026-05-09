vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true

vim.opt.cursorline = true

vim.opt.scrolloff = 10 

vim.keymap.set('n', '<leader>t', ':split | terminal<NL>i') -- [t]erminal
vim.keymap.set('t', '<leader>t', 'exit<NL>')

vim.keymap.set('n', '<leader>{{', 'i{<NL>}<up><NL>')

vim.keymap.set('i', '"', '""<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
vim.keymap.set('i', '<', '<><Esc>i')


--> Rust Programming Language specific keybinds -->
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
	pattern = '*.rs',
	callback = function()
		vim.keymap.set('i', 'Vec', 'Vec<><Esc>i')
		vim.keymap.set('n', 'fn', 'ifn ()<NL>{<NL>}<up><NL>//<up><up><left><left> <left>') -- [f]unctio[n].
		vim.keymap.set('n', 'pfn', 'ifn () -> :<NL>{<NL>}<up><NL>//<up><up><left><left> <left>') -- [p]arameters [f]unctio[n].

	end,
})


--> Cplusplus Programming Language specific keybinds -->
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
	pattern = '*.cpp',
	callback = function()
		vim.keymap.set('n', 'fn', 'ivoid  ()<NL>{<NL>}<up><NL>//<up><up><left> <left>') -- [f]unctio[n].
		vim.keymap.set('n', 'pfn', 'iint  ()<NL>{<NL>}<up><NL>//<up><up><left><left> <left>') -- [p]arameters [f]unctio[n].
	end,
})


vim.keymap.set('n', '<leader>mc', 'i/*<NL>/<up><NL>') -- [M]ulti-line [C]omment
vim.keymap.set('n', '<leader>oc', 'i// ') -- [O]ne-line [C]omment

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣',}

vim.opt.spell = false
vim.keymap.set('n', '<leader>st', ':set spell!<NL>') -- [s]pell [t]oggle

vim.keymap.set('n', '<leader>w', ':w<NL>')
vim.keymap.set('n', '<leader><shift>w', ':w!<NL>')

vim.keymap.set('n', '<leader>q', ':q<NL>')
vim.keymap.set('n', '<leader><shift>q', ':q!<NL>')

vim.keymap.set('n', '<leader>ft', ':Ex<NL>') -- [f]ile [t]ree
