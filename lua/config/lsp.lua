local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

mason_lspconfig.setup({
	ensure_installed = { "gopls", "clangd", "terraformls", "zls" },
})

local on_attach = function(_, bufnr)
	local opts = { buffer = bufnr, desc = "" }

	vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition", unpack(opts) })
	vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references", unpack(opts) })
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "terraformls", "gopls" }
for _, server in ipairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
		on_attach = on_attach,
	})
end

require("lspconfig").jsonls.setup({
	settings = {
		json = {
			validate = { enable = true },
		},
	},
})

require("lspconfig").sourcekit.setup({
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentRangeFormattingProvider = false
	end,
})
