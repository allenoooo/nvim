local nvim_lsp = require("lspconfig")

nvim_lsp.rust_analyzer.setup({
	cmd = { "/home/user/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer" },
	settings = {
		["rust-analyzer"] = {
			imports = {
				granularity = {
					group = "module",
				},
				prefix = "self",
			},
			cargo = {
				buildScripts = {
					enable = true,
				},
			},
			procMacro = {
				enable = true,
			},
		},
	},
})
