return {
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	{
		"folke/snacks.nvim",
		opts = {
			picker = { enabled = true },
			
		},
		keys = {
			{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
			{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },

		}

	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	}
}
