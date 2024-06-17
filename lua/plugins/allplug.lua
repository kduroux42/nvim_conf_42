return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},

	{ "nvim-telescope/telescope.nvim" },

	{ "ellisonleao/gruvbox.nvim" },

	{ "rebelot/kanagawa.nvim" },

	{ "rose-pine/neovim", name = "rose-pine" },

	{ "bluz71/vim-nightfly-colors", name = "nightfly", priority = 1000 },

	{ "nyoom-engineering/oxocarbon.nvim" },

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
}
