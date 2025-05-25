vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
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
require("config.noice")

vim.cmd.colorscheme("catppuccin-mocha")
vim.cmd([[
  highlight IblScope guifg=#7aa2f7 gui=nocombine
  highlight TreesitterContext guibg=#1e1e2e
]])

-- silence deprecation warnings from plugins
local orig_notify = vim.notify

local filter_notify = function(text, level, opts)
	if type(text) == "string" and string.find(text, "deprecated", 1, true) then
		return
	end

	orig_notify(text, level, opts)
end

vim.notify = filter_notify
