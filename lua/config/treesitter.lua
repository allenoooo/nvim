require('nvim-treesitter.configs').setup {
  ensure_installed = { "go", "cpp", "terraform", "lua", "bash" }, -- add more if you like
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
