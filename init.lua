vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("config.lsp")
require("config.cmp")
require("config.telescope")
require("config.treesitter")
require("config.dap")
require("config.conform")
require("config.lualine")
require("config.gitsigns")
require("config.options")
require("config.theme")

vim.cmd.colorscheme "catppuccin-mocha"
