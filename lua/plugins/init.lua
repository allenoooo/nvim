return {
  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  { "nvim-tree/nvim-web-devicons" },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
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
  { "mfussenegger/nvim-dap",          dependencies = { "nvim-neotest/nvim-nio" } },
  { "rcarriga/nvim-dap-ui",           dependencies = { "mfussenegger/nvim-dap" } },
  { "jay-babu/mason-nvim-dap.nvim",   dependencies = { "wiliamboman/mason.nvim" } },

  { 'akinsho/toggleterm.nvim',        version = "*",                                   config = true },

  -- Formatter
  { "stevearc/conform.nvim" },

  -- Navigate splite panes and interop with tmux
  { "christoomey/vim-tmux-navigator", lazy = false },

  { "lewis6991/gitsigns.nvim",        opts = {} },

  { "nvim-lualine/lualine.nvim",      dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Surround and commenting
  { "kylechui/nvim-surround",         version = "*",                                   event = "VeryLazy", config = true },
  { "numToStr/Comment.nvim",          opts = {},                                       lazy = false },

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
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
    config = function()
      require "startup".setup()
    end
  }
}
