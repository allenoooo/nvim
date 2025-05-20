require('telescope').setup {}

-- Keymaps
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fw', require('telescope.builtin').live_grep, { desc = "Grep in files" })
