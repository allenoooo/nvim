local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
  ensure_installed = { "clangd", "terraformls" }
})


local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr, desc = "" }
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })
  vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to references" })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "gopls", "clangd", "terraformls" }
for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = capabilities,
    on_attach = on_attach,
  }
end

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { "vim" }, -- Recognize the `vim` global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true), -- Make server aware of Neovim runtime files
        checkThirdParty = false,                           -- Optional: avoid popup suggestions
      },
      telemetry = {
        enable = false,
      },
    },
  },
})
