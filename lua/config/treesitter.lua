require('nvim-treesitter.configs').setup {
  ensure_installed = { "go", "cpp", "terraform", "lua", "bash", "json", "yaml" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },
  },
}
