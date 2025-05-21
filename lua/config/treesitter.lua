require('nvim-treesitter.configs').setup {
  ensure_installed = { "go", "cpp", "terraform", "lua", "bash", "json", "yaml" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
