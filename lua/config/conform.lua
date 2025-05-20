require("conform").setup({
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
  formatters_by_ft = {
    go = { "gofmt", "goimports" },
    cpp = { "clang_format" },
    terraform = { "terraform_fmt" },
    lua = { "stylua" },
  },
})
