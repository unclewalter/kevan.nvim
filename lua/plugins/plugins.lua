return {
	
	-- UI stuff	
	{
		'akinsho/toggleterm.nvim', 
		version = "*", 
		config = {
			open_mapping = [[<c-\>]],
			autochdir = true
		}
	},

	-- LSP stuff 
	{'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
	{
		"WieeRd/auto-lsp.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
		event = "VeryLazy",
		opts = {},
	},
	{
		"williamboman/mason.nvim",
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-nvim-lsp",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets" 
		}
	},

	-- Handy functional things
	{
		"aserowy/tmux.nvim",
		opts = {
			copy_sync = {
				enable = true
			}
		}
	},
	{
		"folke/snacks.nvim",
		opts = {
			picker = { enabled = true },
			indent = { 
				char = "│",

			}
			
		},
		keys = {
			{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
			{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
			{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" }

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
