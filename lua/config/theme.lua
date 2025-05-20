require("catppuccin").setup({
  flavour = "mocha",   -- or "macchiato", etc.
  integrations = {
    bufferline = true, -- 👈 enable the bufferline integration
  },
})

vim.cmd.colorscheme "catppuccin-mocha"
