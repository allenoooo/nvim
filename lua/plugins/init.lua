return {
	-- Theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- LSP
	{ "neovim/nvim-lspconfig" },
	{ "mason-org/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Autocompletion
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "L3MON4D3/LuaSnip" },

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "VeryLazy",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {
			enable = true,
			max_lines = 3, -- How many lines of context to show
			trim_scope = "outer", -- "inner" or "outer"
			mode = "cursor", -- or "topline"
			separator = "-",
		},
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			indent = { char = "│" }, -- customize guide style
			scope = {
				enabled = true,
				show_start = true,
				show_end = false,
				highlight = "IblScope",
			},
		},
	},

	{ "MunifTanjim/nui.nvim" },

	{ "rcarriga/nvim-notify" },

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
			"hrsh7th/nvim-cmp",
		},
	},

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

	{
		"folke/snacks.nvim",
		config = function()
			require("snacks").setup()
		end,
	},

	{
		"cuducos/yaml.nvim",
		ft = { "yaml" }, -- optional
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"folke/snacks.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},
	{ "nvim-tree/nvim-web-devicons" },
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup()
		end,
	},

	{
		"filipdutescu/renamer.nvim",
		branch = "master",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("renamer").setup()
		end,
	},

	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		dependencies = {
			"folke/snacks.nvim",
		},
		keys = {
			{
				"<C-n>",
				mode = { "n", "v" },
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
			{
				"<C-m>",
				"<cmd>Yazi cwd<cr>",
				desc = "Open Yazi in working dir",
			},
			{
				"<c-up>",
				"<cmd>Yazi toggle<cr>",
				desc = "Resume last yazi session",
			},
		},
		init = function()
			vim.g.loaded_netrwPlugin = 1
		end,
	},

	{ "nvim-neotest/nvim-nio" },
	{ "mfussenegger/nvim-dap", dependencies = { "nvim-neotest/nvim-nio" } },
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap" } },
	{ "jay-babu/mason-nvim-dap.nvim", dependencies = { "mason-org/mason.nvim" } },

	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	-- Formatter
	{ "stevearc/conform.nvim" },

	-- Navigate splite panes and interop with tmux
	{ "christoomey/vim-tmux-navigator", lazy = false },

	{ "lewis6991/gitsigns.nvim", opts = {} },

	{ "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- Surround and commenting
	{
		"kylechui/nvim-surround",
		version = "*",
		event = "VeryLazy",
		config = true,
	},
	{ "numToStr/Comment.nvim", opts = {}, lazy = false },

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},

	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		cmd = "LazyGit",
		keys = {
			{ "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" },
		},
	},

	{ "nvim-telescope/telescope-file-browser.nvim" },

	{
		"startup-nvim/startup.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
		},
		config = function()
			require("startup").setup()
		end,
	},

	{
		"mrcjkb/rustaceanvim",
		version = "^6", -- Recommended
		lazy = false, -- This plugin is already lazy
	},
}
