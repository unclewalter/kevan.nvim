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
	{'catppuccin/nvim', name = 'catppuccin', priority = 1000 },

	-- LSP stuff 
	{
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',  -- This is the bridge
		'neovim/nvim-lspconfig',
	},
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
			'hrsh7th/cmp-buffer',       -- Buffer completions
			'hrsh7th/cmp-path',         -- Path completions
			'L3MON4D3/LuaSnip',         -- Snippet engine
			'saadparwaiz1/cmp_luasnip', -- Snippet completions
		}
	},
	{
		'ray-x/lsp_signature.nvim',
		config = function()
			require('lsp_signature').setup({
				bind = true,
				handler_opts = {
					border = "rounded"
				},
				hint_enable = false,  -- Disable virtual text hints if you find them annoying
			})
		end
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
			{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },

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
	},
	-- Embedded Systems
	{
		"sbatin/platformio.nvim",
		dependencies = { "numToStr/FTerm.nvim" },
	}
}
