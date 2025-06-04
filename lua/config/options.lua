local opt = vim.opt

opt.number = true -- show absolute line number for the current line
opt.relativenumber = true -- show relative numbers for all other lines
opt.tabstop = 2 -- Number of visual spaces per TAB
opt.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent
opt.expandtab = true -- Convert tabs to spaces
opt.termguicolors = true -- Bufferline needs this to color the buffer line bar
opt.clipboard = "unnamedplus" -- Use system keyboard

local keymap = vim.keymap

keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float<CR>", { desc = "Toggle terminal (float)" })
vim.keymap.set("n", "<leader>wo", "<cmd>only<CR>", { desc = "Close all other windows" })

keymap.set("n", "dn", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
keymap.set("n", "dp", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })

keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
keymap.set("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close current buffer" })

local builtin = require("telescope.builtin")
keymap.set("n", "gi", builtin.lsp_implementations, { desc = "Go to implementation" })
keymap.set("n", "gt", builtin.lsp_type_definitions, { desc = "Go to type definition" })
keymap.set("n", "gd", builtin.lsp_definitions, { desc = "Go to definition" })
keymap.set("n", "gr", builtin.lsp_references, { desc = "Go to references" })
keymap.set("n", "ds", builtin.lsp_document_symbols, { desc = "Document symbols" })
keymap.set("n", "ws", builtin.lsp_workspace_symbols, { desc = "Workspace symbols" })

keymap.set("n", "<leader>ra", function()
	require("renamer").rename()
end, { desc = "Rename symbol (LSP)" })

-- custom stuff
keymap.set(
	"n",
	"<leader>gb",
	"<cmd>TermExec cmd='go build -o build/ethos cmd/main.go '<CR>",
	{ desc = "Build project" }
)
