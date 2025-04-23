return {
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
	{'williamboman/mason.nvim'},
	{'neovim/nvim-lspconfig'},
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
