return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = { "hrsh7th/cmp-emoji" },
		---@param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "emoji" })
		end,
	},

	{ "nvim-telescope/telescope.nvim", },

	{ "ellisonleao/gruvbox.nvim" },

	{ "rebelot/kanagawa.nvim" },

	{ "rose-pine/neovim", name = "rose-pine" },

	{ "bluz71/vim-nightfly-colors", name = "nightfly", priority = 1000 },

	{ "nyoom-engineering/oxocarbon.nvim" },

	{ "RRethy/base16-nvim" },

	{ "hougesen/blame-me.nvim" },

	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},

	{
		"kdheepak/lazygit.nvim",
		lazy = true,
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		-- optional for floating window border decoration
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
		},
	},

	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox",
		},
	},
}
