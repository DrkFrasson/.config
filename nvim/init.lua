    -->			    ,	   ,										<--
    -->			   /·\	   |\			MMMMMMMM   MMMMMMMMM					<--
    -->			  /····	   NN\			  MMMM	     MMMM'					<--
    -->			  @@····   NNN			  MMMM	   MMMMM'					<--
    -->			  @@@····  NNN	;MMMM,	;MMMM,	  MMMM   MMMMM'						<--
    -->			  @@@ ···· NNN	N    N	N    N	  MMMM MMMMM' AA   'a;,					<--
    -->			  @@@  ····NNN	NaaaaN	N    N	  MMMMMMMM' /mm/    000,a000,a00a,			<--
    -->			  @@@   ····NN	N	N    N	  MMMMMM'    //    000   000   000			<--
    -->			  \@@    ····/	N	N    N	  MMMM'     //    000   000   000			<--
    -->			   \|     \·/	'NNNN?	'MMMM'	  MM'      /mm/  000,  000,  000,			<--
    -->			    '	   '			  '							<--

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true

vim.opt.cursorline = true

vim.opt.scrolloff = 6

vim.keymap.set('n', '<leader>t', ':split | terminal<NL>i') -- [t]erminal
vim.keymap.set('n', '<leader>lt', ':vsplit | terminal<NL>i') -- [l]eft [t]erminal
vim.keymap.set('t', '<leader>t', 'exit<NL>')

vim.keymap.set('n', '<leader>{{', 'i{<NL>}<up><NL>')

vim.keymap.set('i', '"', '""<Esc>i')
vim.keymap.set('i', '{', '{}<Esc>i')
vim.keymap.set('i', '(', '()<Esc>i')
vim.keymap.set('i', '[', '[]<Esc>i')
vim.keymap.set('i', '<', '<><Esc>i')

--> Zig Programming Language specific keybinds -->
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
	pattern = '*.zig',
	callback = function()
		vim.keymap.set('i', '@pan', '@panic("");<left><left><left>') -- [f]unctio[n].
		vim.keymap.set('i', '@Vec', '@Vector( , )<left><left><left>') -- [f]unctio[n].
		vim.keymap.set('n', 'fn', 'ifn () noreturn{<NL>}<up><ESC>o//<up><left><left><left>') -- [f]unctio[n].
		vim.keymap.set('n', 'pfn', 'ifn () {<NL>}<up><ESC>o//<up><left><left><left>') -- [p]arameters [f]unctio[n].
	end,
})

--> Rust Programming Language specific keybinds -->
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
	pattern = '*.rs',
	callback = function()
		vim.keymap.set('i', 'Vec', 'Vec<><Esc>i')
		vim.keymap.set('n', 'fn', 'ifn ()<NL>{<NL>}<up><NL>//<up><up><left><left>') -- [f]unctio[n].
		vim.keymap.set('n', 'pfn', 'ifn () -> <NL>{<NL>}<up><NL>//<up><up><left><left><left>') -- [p]arameters [f]unctio[n].
	end,
})


--> Cplusplus Programming Language specific keybinds -->
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
	pattern = '*.cpp',
	callback = function()
		vim.keymap.set('n', 'fn', 'ivoid ()<NL>{<NL>}<up><NL>//<up><up><left>') -- [f]unctio[n].
		vim.keymap.set('n', 'pfn', 'iint ()<NL>{<NL>}<up><NL>//<up><up><left><left>') -- [p]arameters [f]unctio[n].
	end,
})


vim.keymap.set('n', '<leader>mc', 'i/*<NL>/<up><NL>') -- [M]ulti-line [C]omment
vim.keymap.set('n', '<leader>oc', 'i// ') -- [O]ne-line [C]omment

vim.opt.list = true
vim.opt.listchars = { tab = '▏ ', trail = '·', nbsp = '␣',} -- nl = '↩'} -- u+21a9 => ↩, ▏»

vim.opt.spell = false
vim.keymap.set('n', '<leader>st', ':set spell!<NL>') -- [s]pell [t]oggle

vim.keymap.set('n', '<leader>w', ':w<NL>')
vim.keymap.set('n', '<leader><shift>w', ':w!<NL>')

vim.keymap.set('n', '<leader>q', ':q<NL>')
vim.keymap.set('n', '<leader><shift>q', ':q!<NL>')

vim.keymap.set('n', '<leader>ft', ':Ex<NL>') -- [f]ile [t]ree

vim.keymap.set('n', '<C-k>', ':m .-2<NL>>==') -- Moves line a line minus (up)
vim.keymap.set('n', '<C-j>', ':m .+1<NL>>==') -- Moves line a line more (down)
