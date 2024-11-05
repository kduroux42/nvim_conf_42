-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require('telescope').setup({
	defaults = {
		file_ignore_patterns = { '^obj/', },
	}
})

require('hardtime').setup()

local set = vim.opt

local TAB_WIDTH = 4
set.tabstop = TAB_WIDTH
set.shiftwidth = TAB_WIDTH
set.expandtab = false
vim.g.autoformat = false
--vim.cmd('colorscheme base16-tokyo-city-terminal-dark')
--vim.cmd('colorscheme base16-summerfruit-dark')

